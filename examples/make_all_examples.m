function make_all_examples(folder)
%MAKE_ALL_EXAMPLES   Make all examples in a certain category.
%   MAKE_ALL_EXAMPLES(DIR) makes all examples in the directory DIR.
%
%   See also MAKE_EXAMPLE.

%%
% First, get the names of all examples in the folder.
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
disp(['Found ' num2str(length(examples)) ' examples in folder ./' folder '.'])

%%
% Loop through examples and make each one.
for eg = examples
    eg = eg{1};
    make_example(folder, eg);
end

%%
% Give the user a friendly goodbye message.
disp(['Done and done and done!'])

return
