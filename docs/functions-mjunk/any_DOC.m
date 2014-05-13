%% ANY :: True if any value of a CHEBFUN is nonzero. ANY ignores entries that are
%       NaN (Not a Number).
%    ANY(X, DIM), where X is an array-valued CHEBFUN, works down the dimension
%    DIM. If DIM is the CHEBFUN (continuous) dimension, then ANY returns a
%    logical column vector (or row) in which the Jth element is TRUE if the Jth
%    column (or row) has a nonzero value. Otherwise, ANY returns a CHEBFUN which
%    takes the value 1 wherever any of the columns (or rows) of X are nonzero,
%    and zero everywhere else.
% 
%    ANY(X) is shorthand for ANY(X, 1).
% 
%  See also ALL.
%