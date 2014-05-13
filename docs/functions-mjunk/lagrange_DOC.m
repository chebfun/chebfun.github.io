%% LAGRANGE :: Compute Lagrange basis functions.
%    F = CHEBFUN.LAGRANGE(X) returns a CHEBFUN object F representing the Lagrange
%    polynomials for the points X(0), ..., X(N). That is, each column of F is a
%    a polynomial of degree N which satisfies F(X,:) = eye(length(X)).
% 
%    F = CHEBFUN.LAGRANGE(X, DOM) restricts the result F to the domain DOM. DOM
%    _must_ be passed if X is a scalar.
% 
%  See also INTERP1, VANDER.
%