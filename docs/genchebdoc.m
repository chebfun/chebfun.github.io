function genchebdoc
%GENCHEBDOC Generate html documenation for chebfun methods.
%   The doc text is the same as each method's `help` text.

% TODO: Include a special case for the constructor `chebfun`.
%       right now this script uses `chebfun/chebfun`, which has
%       a very silly doc comment.
% TODO: Add links to things in 'See also'.

tic

% Directory and file naming options.
opts.mdir    = 'functions-mjunk'; % directory for m files
opts.docdir  = 'functions';       % directory for html files
opts.fsuffix = '_DOC';            % suffix for m-files

% Collect all relevant chebfun methods.
fcheb    = methods('chebfun');
fnoncheb = { 'chebpref'; 'barymat'; 'chebpoly'
             'chebpts';  'jacpts';  'legpoly'
             'legpts';   'lobpts'; 'lebesgue' };

% Initialize text to go in the index file.
NL = sprintf('\n'); % newline character
indextext = ['%% Chebfun documentation' NL '%' NL];

%------------------------------------------------------------
% Loop through and generate an m-file for each function,
% then publish it to html, making sure to put everything
% in its proper directory.

cd(opts.mdir);

try

    indextext = [indextext '%% Methods for class |chebfun|' NL];
    indextext = [indextext gendoc4these(fcheb, 'chebfun', opts)];
    indextext = [indextext '%% Other Chebfun-related methods' NL];
    indextext = [indextext gendoc4these(fnoncheb, '', opts)];

    % Then generate an index page.
    disp(['Publishing index file...']);

    indexfile = 'index.m';
    fh = fopen(indexfile, 'w+');
    fwrite(fh, indextext);
    fclose(fh);

    pub.outputDir = ['../' opts.docdir];
    publish(indexfile, pub);
    cd('..');

catch err

    cd('..');
    error(err.identifier)

end

toc
return

%------------------------------------------------------------
function indextext = gendoc4these(list, theclass, opts)
%GENDOC4THESE   Generate and Publish doc files for the methods
%   of class THECLASS specified in the cell array LIST.
%
%   OPTS is a struct with these (required) options:
%       opts.fsuffix = m-file suffix (to prevent path pollution)
%       opts.docdir  = directory to put the HTML files in

NL = sprintf('\n'); % newline character
indextext = [];

if ~isempty(theclass),
    theclass = [theclass '/'];
end

for k = 1:length(list),

    fname    = list{k};                     % e.g. 'abs'
    ffull    = [theclass fname];            % e.g. 'chebfun/abs'
    filename = [fname opts.fsuffix '.m'];   % e.g. 'abs_DOC.m'
    helptext = help(which(ffull));          % grab helptext of 'chebfun/abs'

    fsnip    = helptext(1:find(helptext==NL)-1);  % First line of help text
    fsnip    = strrep(fsnip, '   ', ' :: ');      % Punctuation, readability
    fsnip    = strtrim(fsnip);                    % Remove trailing whitespace

    doctext  = helptext;
    doctext  = [fsnip doctext(find(doctext==NL,1):end)]; % Formatting
    doctext  = ['%% ' strrep(doctext, NL, [NL '%'])];    % Remove '%'

    flink    = [fname '.html'];

    % There are some inconsistencies with declared functions,
    % so this is sort of an existence check.
    if length(helptext) == 0,
        continue;
    end

    disp(['Publishing ' ffull '...']);

    pub.outputDir = ['../' opts.docdir]; % docdir is relative to mdir
    pub.format = 'html';

    fh = fopen(filename, 'w+');
    fwrite(fh, doctext);
    fclose(fh);
    publish(filename, pub);

    % Rename the HTML file (it doesn't need a suffix).
    movefile([pub.outputDir '/' fname opts.fsuffix '.html'], ...
             [pub.outputDir '/' fname '.html']);

    nextline  = ['% * <' flink ' ' fsnip '>' NL];
    indextext = [indextext nextline];
end

return
