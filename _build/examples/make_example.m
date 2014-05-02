function make_example(folder, examplename)
%MAKE_EXAMPLE   Make a Chebfun example.
%   MAKE_EXAMPLE(FOLDER, NAME) publishes the example FOLDER/NAME.
%   For instance,
%       >> make_example('linalg', 'NonnormalQuiz');

% TODO: make this robust to other people's machines
%       and figure out the process for updating existing examples.
pathpath = '/Users/hrothgar/Dropbox/chebfun/examples/';
egname = [folder '/' examplename '.m'];
copyfile([pathpath egname], egname);

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
mypublish(examplename, opts);
% movefile([opts.outputDir '/' examplename '.html'], [examplename '.md'], 'f');
cd('..')

% Let the user know we're done.
fprintf(1, 'Done.\n')

return


%-----------------------------------------------------------------------------
function mypublish(varargin)
%MYPUBLISH   Publish a Chebfun example from a safe clean workspace.
%   Credit to Nick Hale for this.

close all
evalin('base','clear all');
% chebfunpref('factory'), cheboppref('factory')
format long
format compact
publish(varargin{:});
% chebfunpref('factory'), cheboppref('factory')
close all

return
