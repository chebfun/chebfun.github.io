function make_chapters(N)
%MAKE_CHAPTERS   Make a chapter of the Chebfun Guide.
%   MAKE_CHAPTERS(N) publishes Chapters of the guide indicated
%   by the vector N.
%
%   Example:   >> make_chapters([1 2 3])

% TODO: make this robust to other people's machines
%       and figure out the process for updating existing examples.
pathpath = '/Users/hrothgar/Dropbox/chebfun/guide/';
slug     = 'guide';

% Make each chapter the user has requested
for n = N(:)'
    chapname = [ slug num2str(n) '.m' ];

    % Try to copy the file.
    [copysuccess,msg] = copyfile([pathpath chapname], chapname);
    if ~copysuccess
        warning(['Warning: ' msg])
        continue;
    end

    % Let the user know the Publish has begun.
    message = ['Making Chapter ' num2str(n) '...'];
    n = max(1, 33-length(message));
    spaces = repmat(' ', 1, n);
    fprintf(1, [message spaces])

    % Publish options.
    opts.outputDir  = 'img';
    opts.format     = 'html';
    opts.stylesheet = fullfile(pwd, 'custom_guide2md.xsl');

    % Publish the chapter.
    mypublish(chapname, opts);

    % Let the user know we're done.
    fprintf(1, 'Done.\n')
end

return


%-----------------------------------------------------------------------------
function mypublish(varargin)
%MYPUBLISH   Publish a Chebfun example from a safe clean workspace.
%   Credit to nick Hale for this.

close all
evalin('base','clear all');
guideFormats;
chebexample_publish(varargin{:});
close all

return
