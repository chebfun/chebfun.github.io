function make_all_examples(varargin)
%MAKE_ALL_EXAMPLES   Make all examples in a certain category.
%   MAKE_ALL_EXAMPLES(DIR) makes all examples in the directory DIR.
%
%   See also MAKE_EXAMPLE.

%%
% Sort out input arguments.

if nargin == 0,
    % Make all examples in all folders.

    folders = { 'approx',   'linalg',   ...
                'calc',     'complex',  ...
                'ode',      'ode-eig',  ...
                'opt',      'pde',      ...
                'quad',     'roots',    ...
                'fun',      'stats',    ...
                'geom',     'veccalc',  ...
                'integro' };

elseif nargin == 1,
    % The input was either a string (single folder name)
    % or a cell array of strings.

    if iscell(varargin{1})
        folders = varargin{1};
    else
        folders = {varargin{1}};
    end
else
    % The inputs are strings.
    folders = varargin;
end

%%
% Loop through each folder and run all the examples.

linebrk = '';
count = 0;
tic;

for j = 1:length(folders)
    folder = folders{j};

    %%
    % Get the names of all examples in the folder.
    files = dir(folder)';
    examples = {};
    for f = files
        if f.isdir
            continue;
        end

        name = f.name;
        if ( length(name) < 3 ) || ( ~strcmp(name(end-1:end), '.m') )
            continue;
        end

        examples{end+1} = name(1:end-2);
    end

    %%
    % Give the user a friendly message to reassure them this is working.
    plural = 's';
    if ( length(examples) == 1 )
        plural = '';
    end
    disp([linebrk 'Found ' num2str(length(examples)) ' example' plural ...
        ' in folder ./' folder '.'])
    linebrk = sprintf('\n');

    %%
    % Loop through examples and make each one.
    for k = 1:length(examples)
        eg = examples{k};
        fprintf(1, '%2.2d. ', k)
        make_example(folder, eg);
        count = count + 1;
    end
end
t = toc;

%%
% Give the user a friendly goodbye message.
plural = 's';
if ( count == 1 )
    plural = '';
end

disp([linebrk 'Made ' num2str(count) ' example' plural ' in ' num2str(t) 's.'])

return
