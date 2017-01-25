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
opts.maxWidth = 600;
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
    % Publish the example.
    addpath('../../mlib');
    addpath(['../' pathpath folder]);
    webPublish(examplename, opts);
    rmpath(['../' pathpath folder]);
    rmpath('../../mlib');

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

end
