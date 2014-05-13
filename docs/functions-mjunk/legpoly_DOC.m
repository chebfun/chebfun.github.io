%% LEGPOLY :: Legendre polynomials.
%    P = LEGPOLY(N) computes a chebfun of the Legendre polynomial of degree N on
%    the interval [-1,1]. N can be a vector of integers, in which case the output
%    is an array-valued CHEBFUN.
% 
%    P = LEGPOLY(N, D) computes the Legendre polynomials as above, but on the
%    interval given by the domain D, which must be bounded. Note that interior
%    breakpoints in D are ignored.
% 
%    P = LEGPOLY(N, D, 'norm') or P = LEGPOLY(N, 'norm') normalises so that
%    integrate(P(:,j).*P(:,k)) = delta_{j,k}.
% 
%    For N <= 1000 LEGPOLY uses a weighted QR factorisation of a 2*(N+1) x
%    2*(N+1) Chebyshev Vandermonde matrix. For scalar N > 1000 it uses the
%    LEG2CHEB method and for a vector of N with any entry > 1000 it uses the
%    standard recurrence relation. This default can be overwritten by passing a
%    fourth input LEGPOLY(N, D, NORM, METHOD), where METHOD is 1, 2, or 3
%    respectively.
% 
%    NOTE, LEGPOLY() will always return a CHEBFUN whose underlying 'tech' is a
%    CHEBTECH2 object.
% 
%  See also CHEBPOLY, LEGPTS, and LEG2CHEB.
%