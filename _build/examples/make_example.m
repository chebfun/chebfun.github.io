function make_example(folder, examplename)
%MAKE_EXAMPLE   Make a Chebfun example.
%   MAKE_EXAMPLE(FOLDER, NAME) publishes the example FOLDER/NAME.
%   For instance,
%       >> make_example('linalg', 'NonnormalQuiz');

% Publish options.
opts.outputDir  = 'img';
opts.format     = 'html';
opts.stylesheet = fullfile(pwd, 'custom_mxdom2md.xsl');

% Move into the containing folder, publish the example, make a bare MarkDown
% template file, then move back out.
cd(folder)
mypublish(examplename, opts);
movefile([opts.outputDir '/' examplename '.html'], [examplename '.md'], 'f');
cd('..')

return


%-----------------------------------------------------------------------------
function mypublish(varargin)
%MYPUBLISH   Publish a Chebfun example from a safe clean workspace.
%   Credit to Nick Hale for this.

close all
evalin('base','clear all');
% chebfunpref('factory'), cheboppref('factory')
publish(varargin{:});
% chebfunpref('factory'), cheboppref('factory')
close all

return
