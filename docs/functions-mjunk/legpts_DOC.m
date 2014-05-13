%% LEGPTS ::  :: Legendre points and Gauss-Legendre Quadrature Weights.
%    LEGPTS(N) returns N Legendre points X in (-1,1).
% 
%    [X, W] = LEGPTS(N) returns also a row vector W of weights for Gauss-Legendre
%    quadrature.
% 
%    [X, W] = LEGPTS(N, INTERVAL) scales the nodes and weights for the finite
%    interval INTERVAL.
% 
%    [X, W, V] = LEGPTS(N) or [X, W, V] = LEGPTS(N, D) returns additionally a
%    column vector V of weights in the barycentric formula corresponding to the
%    points X. The weights are scaled so that max(abs(V)) = 1.
% 
%    LEGPTS(N, INTERVAL, METHOD) or LEGPTS(N, METHOD) allows the user to select
%    which method to use.
%     METHOD = 'REC' uses the recurrence relation for the Legendre polynomials
%      and their derivatives to perform Newton iteration on the WKB approximation
%      to the roots. Default for N < 100.
%     METHOD = 'ASY' uses the Hale-Townsend fast algorithm based upon asymptotic
%      formulae, which is fast and accurate. Default for N >= 100.
%     METHOD = 'GW' will use the traditional Golub-Welsch eigenvalue method,
%        which is maintained mostly for historical reasons.
% 
%    [X, W, V, T] = LEGPTS(N) returns also the arccos of the nodes, T = acos(X).
%    In some situations (in particular with 'ASY') these can be computed to a
%    much better relative precision than X.
% 
%  See also CHEBPTS.
%