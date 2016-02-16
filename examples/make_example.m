function make_example(folder, examplename, varargin)
%MAKE_EXAMPLE   Make a Chebfun example.
%   MAKE_EXAMPLE(FOLDER, NAME) publishes the example FOLDER/NAME.
%   For instance,
%       >> make_example('linalg', 'NonnormalQuiz');
%
%   This function works as part of the Chebfun website suite, and
%   it assumes that directory structure.

if exist(folder, 'dir') ~= 7
    mkdir(folder)
end

pathpath = '../../examples/';
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
opts.stylesheet = fullfile(pwd, 'custom_example2md.xsl');

% Move into the containing folder, publish the example, make a bare MarkDown
% template file, then move back out.
cd(folder)

% % This is really inelegant. Must override `snapnow` in the code
% % in order to get pretty pictures, so create a file `snapnow.m`
% % that redirects to `chebexample_snapnow`.
% snapfile = which('snapnow');
% if ~strcmp(fileparts(snapfile), pwd)
%     fh = fopen('snapnow.m', 'w');
%     fprintf(fh, 'function snapnow(varargin), chebexample_snapnow(varargin{:}), return');
%     fclose(fh);
% end

try
    mypublish(examplename, opts);

    % Strip any MATLAB error messages from the output.
    system(['../strip-mcode-errors.pl img/' examplename '.' opts.format]);

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
chebfunpref.setDefaults('factory'), cheboppref.setDefaults('factory')

% Extra M-files that we need for building the examples (some of which override
% MATLAB built-ins).
addpath('../../mlib');

% The Example Formats. This is not a separate file because this script shifts
% directories, and we don't want a copy of the file in each category directory.
set(0, 'defaultfigureposition',      [0 0 600 270]);
set(0, 'defaultaxeslinewidth',       0.5);
if ( ~verLessThan('matlab', '8.6') )
    % Specify font size in pixels on MATLAB R2015b and later to (hopefully)
    % obtain display-independent results now that MATLAB is "DPI-aware".
    set(0, 'defaultaxesfontunits',       'pixels');
    set(0, 'defaultaxesfontsize',        13.3333);
    set(0, 'defaulttextfontunits',       'pixels');
    set(0, 'defaulttextfontsize',        13.3333);
else
    set(0, 'defaultaxesfontsize',        10);
    set(0, 'defaulttextfontsize',        10);
end
set(0, 'defaultaxestitlefontweight', 'normal');
set(0, 'defaultlinelinewidth',       1.6);
set(0, 'defaultpatchlinewidth',      1.6);
set(0, 'defaultlinemarkersize',      8);
set(0, 'defaultfigurecolor',        'w');
set(0, 'defaultaxescolor',           'none');

format compact
format long
warning('off', 'MATLAB:gui:latexsup:UnableToInterpretLaTeXString');
warning('off', 'MATLAB:gui:latexsup:UnsupportedFont');

% chebexample_publish(varargin{:});
publish(varargin{:});

set(0, 'defaultfigureposition',      'factory');
set(0, 'defaultaxeslinewidth',       'factory');
if ( ~verLessThan('matlab', '8.6') )
    set(0, 'defaultaxesfontunits',       'factory');
    set(0, 'defaulttextfontunits',       'factory');
end
set(0, 'defaultaxesfontsize',        'factory');
set(0, 'defaulttextfontsize',        'factory');
set(0, 'defaultaxestitlefontweight', 'factory');
set(0, 'defaultlinelinewidth',       'factory');
set(0, 'defaultpatchlinewidth',      'factory');
set(0, 'defaultlinemarkersize',      'factory');
set(0, 'defaultfigurecolor',         'factory');
set(0, 'defaultaxescolor',           'factory');

rmpath('../../mlib');

chebfunpref.setDefaults('factory'), cheboppref.setDefaults('factory')
close all

return
