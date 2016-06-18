function make_chapters(N)
%MAKE_CHAPTERS   Make a chapter of the Chebfun Guide.
%   MAKE_CHAPTERS(N) publishes Chapters of the guide indicated
%   by the vector N.
%
%   Example:   >> make_chapters([1 2 3])
%
%   This function works as part of the Chebfun website suite, and
%   it assumes that directory structure.

pathpath = '../../../guide/';
slug     = 'guide';

% Make each chapter the user has requested
for n = N(:)'
    chapname = [ slug sprintf('%02d',n) '.m' ];

    % Try to copy the file.
    [copysuccess,msg] = copyfile([pathpath chapname], chapname);
    if ~copysuccess
        warning(['Warning: ' msg])
        continue;
    end

    % Let the user know the Publish has begun.
    message = ['Making Chapter ' sprintf('%02d',n) '...'];
    n = max(1, 33-length(message));
    spaces = repmat(' ', 1, n);
    fprintf(1, [message spaces])

    % Publish options.
    opts.outputDir  = 'img';
    opts.format     = 'html';
    opts.stylesheet = fullfile(pwd, 'custom_guide2md.xsl');

    % Publish the chapter.
    addpath('../../mlib');
    webPublish(chapname, opts);
    rmpath('../../mlib');

    % Let the user know we're done.
    fprintf(1, 'Done.\n')
end

end
