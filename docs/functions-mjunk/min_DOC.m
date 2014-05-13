%% MIN :: Minimum values of a CHEBFUN.
%    MIN(F) and MIN(F, 'global') return the minimum value of the CHEBFUN F.
% 
%    [Y, X] = MIN(F) returns also points X such that F(X) = Y.
% 
%    [Y, X] = MIN(F, 'local') returns not just the global minimum value but all
%    of the local minima.
% 
%    If F is complex-valued, absolute values are taken to determine the minima,
%    but the resulting values correspond to those of the original function.
% 
%    If F is array-valued, then the columns of X and Y correspond to the columns
%    of F. NaNs are used to pad Y and X when the 'local' flag is used and the
%    columns are not of the same length.
% 
%    H = MIN(F, G), where F and G are CHEBFUNs defined on the same domain,
%    returns a CHEBFUN H such that H(x) = min(F(x), G(x)) for all x in the
%    domain of F and G. Alternatively, either F or G may be a scalar.
% 
%  See also MAX, MINANDMAX, ROOTS.
%