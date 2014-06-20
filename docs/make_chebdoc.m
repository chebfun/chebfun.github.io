function make_chebdoc
%MAKE_CHEBDOC   Generate Markdown documenation for chebfun methods.
%   The doc text is the same as each method's help text.

% TODO: Add links to things in 'See also'.

%-----------------------------------------------------------------------------
tic

% The directory the .md files will go in.
docdir = 'functions';

% We will include the docs of everything returned by
% `method X` where `X` is one of these:
classNames = {
    % 'chebfun',
    % 'chebfun2',
    % 'chebfun2v',
    % 'chebfunpref',
    'chebgui',
    'chebmatrix',
    'chebop',
    'cheboppref',
    'domain',
    'fourtech'
    }';

% And also these "trunk" codes, which we'll call "utility functions".
utilities = {
    'abstractQR',
    'baryWeights',
    'barymat',
    'lobpts',
    'blowup',
    'cheb2leg',
    'chebfunpref',
    'chebkind',
    'cheblogo',
    'chebpoly',
    'chebpolyvalm',
    'chebpts',
    'chebsnake2',
    'chebtest',
    'chebvar',
    'fov',
    'hermpoly',
    'hermpts',
    'jacpoly',
    'jacpts',
    'lagpoly',
    'lagpts',
    'lebesgue',
    'leg2cheb',
    'legpoly',
    'legpts',
    'padeapprox',
    'paduapts',
    'pdeset',
    'quasimatrix',
    'radaupts',
    'ratinterp',
    'resampling',
    'scribble',
    'scribble2',
    'sing',
    'splitting'
    }';

%-----------------------------------------------------------------------------
% We will use `sprintf` on these templates to generate each of the Markdown
% files. We might as well include the relevant variables in the YAML
% frontmatter to save us from having to parse them out using Python somehow.
% This way everything is done using the templating engine.

functionTemplate = [
    '---\n' ...
    'title: "%s"\n' ...
    'layout: function-reference-%s\n' ...
    'class_name: "%s"\n' ...
    'function_name: "%s"\n' ...
    'snippet: "%s"\n' ...
    'qualifiers: "%s"\n' ...
    'return_type: "%s"\n' ...
    'arguments: "%s"\n' ...
    '---\n\n' ...
    '%s\n' ...
    ];

indexTemplate = [
    '---\n' ...
    'title: "%s"\n' ...
    'layout: function-reference-%s\n' ...
    'class_name: "%s"\n' ...
    'function_names: \n%s\n' ...
    'function_snippets: \n%s\n' ...
    'function_qualifiers: \n%s\n' ...
    'function_return_types: \n%s\n' ...
    'function_arguments: \n%s\n' ...
    '---\n' ...
    ];

%-----------------------------------------------------------------------------
% Loop through each class, generating the Markdown files for every function.
% Each class gets its own folder on the website, so in addition, we generate
% an index.md file for each class. The main index file is not created here.
% Note that there is a special case for constructors.

NL     = sprintf('\n');
toList = @(s) ['- "'  strrep(s, NL, ['"' NL '- "' ]) '"'];
indent = @(s) ['    ' strrep(s, NL, [NL '    '])];
escapeSlashes = @(s) strrep(s, '\', '\\');
escapePercents = @(s) strrep(s, '%', '%%');

for className = classNames
    className = className{1};
    disp(['Making doc for @' className '...'])

    % Create the directory if it doesn't exist.
    if ~exist([docdir '/' className])
        mkdir([docdir '/' className]);
    end

    % Get all the methods for this class.
    [attrNames, methodsData] = methodsview(className, 'noUI'); % Undocumented.

    % `methodsview` is stupid and omits the first column if it's empty.
    attrNames   = toCell(attrNames);
    methodsData = toCell(methodsData);
    if length(attrNames) == 3
        attrNames   = [{'Qualifiers'} attrNames];
        methodsData = [cellstr(repmat(' ', size(methodsData,1), 1)) methodsData];
    end

    % These are the functions, then.
    functionNames = methodsData(:, 3);

    %-------------------------------------------------------------------------
    % First, each function.

    snippets = {};

    for k = 1:length(functionNames)

        functionName = char(functionNames(k));
        disp(['   ' className '/' functionName '...'])

        % The constructor needs a special thing.
        callToHelp = [className '/' functionName];
        if strcmp(functionName, className)
            % This function is a constructor.
            callToHelp = className;
        end

        % Don't bother with methods that have no help text. A lot of these are
        % methods of a superclass, e.g. domain/plus and so on, since @domain
        % inherits from @double.
        s = help(callToHelp);
        if length(s)

            % These are the template variables.
            f_title        = functionName;
            f_layout       = 'item';
            f_className    = className;
            f_functionName = functionName;
            f_helpHtml     = escapeSlashes(escapePercents(help2html(callToHelp)));
            f_helpText     = escapeSlashes(help(callToHelp));
            f_snippet      = getSnippetFrom(f_helpText);
            f_qualifiers   = methodsData(k, 1);
            f_returnType   = methodsData(k, 2);
            f_arguments    = methodsData(k, 4);

            if strcmp(functionName, className)
                % This function is a constructor.
                f_snippet = ['The ' className ' constructor.'];
            end

            snippets{k} = f_snippet;

            % Here is the array we'll pass to `fprintf`.
            variables = {char(f_title),
                         char(f_layout),
                         char(f_className),
                         char(f_functionName),
                         char(f_snippet),
                         char(f_qualifiers),
                         char(f_returnType),
                         char(f_arguments),
                         char(f_helpHtml)
                         };

            % Finally, do the templating and write the file.
            fileName    = [docdir '/' className '/' functionName '.md'];
            theMarkdown = sprintf(functionTemplate, variables{:});
            fileHandle  = fopen(fileName, 'w');
            fprintf(fileHandle, theMarkdown);
            fclose(fileHandle);

        else
            % functionName
        end
    end








    %-------------------------------------------------------------------------
    % Now generate the index file.

    % These are the template variables.
    f_title         = className;
    f_layout        = 'classindex';
    f_className     = className;
    f_functionNames = indent(toList(blockify(methodsData(:,3))));
    f_functionSnips = indent(toList(blockify(snippets)));
    f_qualifiers    = indent(toList(blockify(methodsData(:,1))));
    f_returnTypes   = indent(toList(blockify(methodsData(:,2))));
    f_arguments     = indent(toList(blockify(methodsData(:,4))));

    % Here is the array we'll pass to `fprintf`.
    variables = {char(f_title),
                 char(f_layout),
                 char(f_className),
                 char(f_functionNames),
                 char(f_functionSnips),
                 char(f_qualifiers),
                 char(f_returnTypes),
                 char(f_arguments)
                 };

    % Finally, do the templating and write the file.
    fileName    = [docdir '/' className '/index.md'];
    theMarkdown = sprintf(indexTemplate, variables{:});
    fileHandle  = fopen(fileName, 'w');
    fprintf(fileHandle, theMarkdown);
    fclose(fileHandle);
end

return


%-----------------------------------------------------------------------------
function c = toCell(s)
%TOCELL   Convert a java.lang.String[] into a cell array of strings.

c = {};
% I really hate this.
if strcmp(class(s), 'java.lang.String[]')
    for k = 1:length(s)
        c{k} = char(s(k));
    end
    return
end

% This is horrible.
for j = 1:length(s)
    row = s(j);
    for k = 1:length(row)
        c{j,k} = char(row(k));
    end
end

% Ugh.
return


%-----------------------------------------------------------------------------
function snippet = getSnippetFrom(s)
%GETSNIPPETFROM   Return this one-line description from some help text.

NL = sprintf('\n');
s(end+1) = NL;
indexOfFirstLinebreak = strfind(s, NL);
firstLine = strtrim(s(1,1:indexOfFirstLinebreak(1)-1));
indexOfFirstSpace = find(firstLine == ' ', 1);
snippet = strtrim(firstLine(indexOfFirstSpace+1:end));

return


%-----------------------------------------------------------------------------
function block = blockify(s)
%BLOCKIFY   Turn a cell array of strings in to a block of text.

NL = sprintf('\n');
block = [];
for k = 1:length(s)
    block = [block char(s(k)) NL];
end
block = block(1:end-1);

return
