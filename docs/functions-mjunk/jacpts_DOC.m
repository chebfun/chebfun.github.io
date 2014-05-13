%% JACPTS  Gauss-Jacobi Quadrature Nodes and Weights.
%    X = JACPTS(N, ALPHA, BETA) returns the N roots of the degree N Jacobi
%    polynomial with parameters ALPHA and BETA (which must both be greater than
%    or equal -1) where the Jacobi weight function is defined by w(x) =
%    (1-x)^ALPHA*(1+x)^BETA.
% 
%    [X, W] = JACPTS(N, ALPHA, BETA) returns also a row vector W of weights for
%    Gauss-Jacobi quadrature.
% 
%    [X, W, V] = JACPTS(N, ALPHA, BETA) returns additionally a column vector V of
%    weights in the barycentric formula corresponding to the points X.
% 
%    JACPTS(N, ALPHA, BETA, INTERVAL, METHOD) or LEGPTS(N, ALPHA, BETA, METHOD)
%    allows the user to select which method to use.
%     METHOD = 'REC' uses the recurrence relation for the Jacobi polynomials
%      and their derivatives to perform Newton iteration on the WKB approximation
%      to the roots. Default for N < 100.
%     METHOD = 'ASY' uses the Hale-Townsend fast algorithm based upon asymptotic
%      formulae, which is fast and accurate. Default for N >= 100.
%     METHOD = 'GW' will use the traditional Golub-Welsch eigenvalue method,
%        which is maintained mostly for historical reasons.
% 
%    [X, W, V] = JACPTS(N, ALPHA, BETA, [A, B]) scales the nodes and weights for
%        the finite interval [A,B].
% 
%    The cases ALPHA = BETA = -.5 and ALPHA = BETA = .5 correspond to
%    Gauss-Chebyshev nodes and quadrature, and are treated specially (as a closed
%    form of the nodes and weights is available). ALPHA = BETA = 0 calls LEGPTS,
%    which is a more efficient code.
% 
%  See also LEGPTS and CHEBPTS.
%