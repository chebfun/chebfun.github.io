function make_example(folder, examplename, varargin)
%MAKE_EXAMPLE   Make a Chebfun example.
%   MAKE_EXAMPLE(FOLDER, NAME) publishes the example FOLDER/NAME.
%   For instance,
%       >> make_example('linalg', 'NonnormalQuiz');

% TODO: make this robust to other people's machines
%       and figure out the process for updating existing examples.
pathpath = '/Users/hrothgar/Dropbox/chebfun/examples/';
egname = [folder '/' examplename '.m'];
copyfile([pathpath egname], egname);

%%
% Optional argument to suppress errors.
suppress_errors = 0;
if ~isempty(varargin)
    suppress_errors = 1;
end

%%
% Let the user know the Publish has begun.
message = ['Making example ' folder '/' examplename '...'];
N = max(1, 55-length(message));
spaces = repmat(' ', 1, N);
fprintf(1, [message spaces])

% Publish options.
opts.outputDir  = 'img';
opts.format     = 'html';
opts.stylesheet = fullfile(pwd, 'custom_mxdom2md_img.xsl');

% Move into the containing folder, publish the example, make a bare MarkDown
% template file, then move back out.
cd(folder)
try
    mypublish(examplename, opts);
    cd('..')

    % Let the user know we're done.
    fprintf(1, 'Done.\n')
catch ME
    if ( suppress_errors )
        % Suppress the error and simply let the user know it crashed.
        fprintf(1, 'CRASHED.\n')
    else
        % Rethrow the error.
        fprintf(1, 'CRASHED.\n\n')
        rethrow(ME)
    end
end

return


%-----------------------------------------------------------------------------
function mypublish(varargin)
%MYPUBLISH   Publish a Chebfun example from a safe clean workspace.
%   Credit to Nick Hale for this.

close all
evalin('base','clear all');
% chebfunpref('factory'), cheboppref('factory')

% The Example Formats. This is not a separate file because this script shifts
% directories, and we don't want a copy of the file in each category directory.
set(0, 'defaultfigureposition', [0 0 600 270]);
set(0, 'defaultaxeslinewidth',  0.9);
set(0, 'defaultaxesfontsize',   12);
set(0, 'defaultlinelinewidth',  1.5);
set(0, 'defaultpatchlinewidth', 1.5);
set(0, 'defaultlinemarkersize', 15); 
format compact
format long

publish(varargin{:});
close all

return
