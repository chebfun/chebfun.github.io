%% MAX :: Maximum value of a CHEBFUN.
%    MAX(F) and MAX(F, 'global') return the maximum value of the CHEBFUN F.
% 
%    [Y, X] = MAX(F) returns also points X such that F(X) = Y.
% 
%    [Y, X] = MAX(F, 'local') returns not just the global maximum value but all
%    of the local maxima.
% 
%    If F is complex-valued, absolute values are taken to determine the maxima,
%    but the resulting values correspond to those of the original function.
% 
%    If F is array-valued, then the columns of X and Y correspond to the columns
%    of F. NaNs are used to pad Y and X when the 'local' flag is used and the
%    columns are not of the same length.
% 
%    H = MAX(F, G), where F and G are CHEBFUNs defined on the same domain,
%    returns a CHEBFUN H such that H(x) = max(F(x), G(x)) for all x in the
%    domain of F and G. Alternatively, either F or G may be a scalar.
% 
%  See also MIN, MINANDMAX, ROOTS.
%