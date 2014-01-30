%% MINANDMAX :: Minimum and maximum values of a CHEBFUN.
%    Y = MINANDMAX(F) returns the range of the CHEBFUN F such that Y(1,1) =
%    min(F) and Y(2,1) = max(F).
% 
%    [Y, X] = MINANDMAX(F) returns also points X such that F(X(j,1)) = Y(j,1), j
%    = 1, 2.
% 
%    [Y, X] = MINANDMAX(F, 'local') returns not just the global minimum and
%    maximum values, but all of the local extrema (i.e., local min and max).
%    Note that point values (i.e., impulses) are not regarded as local extrema.
% 
%    If F is complex-valued, absolute values are taken to determine extrema, but
%    the resulting values correspond to those of the original function.
%    
%    If F is array-valued, then the columns of X and Y correspond to the columns
%    of F. NaNs are used to pad Y and X when the 'local' flag is used and the
%    columns are not of the same length.
% 
%  See also MAX, MIN.
%