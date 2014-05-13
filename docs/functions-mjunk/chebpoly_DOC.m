%% CHEBPOLY :: Chebyshev polynomial.
%    F = CHEBPOLY(N) returns the CHEBFUN corresponding to the Chebyshev
%    polynomials T_N(x) on [-1,1], where N may be a vector of positive integers.
% 
%    F = CHEBPOLY(N, D), where D is an interval or a domain, gives the same
%    result scaled accordingly.
% 
%    F = CHEBPOLY(N, KIND) or F = CHEBPOLY(N, D, KIND) returns Chebyshev
%    polynomials of the 1st kind, T_N(x)), when KIND = 1, and Chebyshev
%    polynomials of the 2nd kind, U_N(x)), when KIND = 2.
% 
%  See also CHEBFUN/CHEBPOLY, LEGPOLY, and CHEBPTS.
%