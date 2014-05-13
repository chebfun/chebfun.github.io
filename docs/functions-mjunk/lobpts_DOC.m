%% LOBPTS :: Gauss-Legendre-Lobatto Quadrature Nodes and Weights.
%   LOBPTS(N) returns N Legendre-Lobatto points X in [-1,1].
% 
%   [X, W] = LOBPTS(N) returns also a row vector W of weights for
%   Gauss-Legendre-Lobatto quadrature.
% 
%   [X, W, V] = LOBPTS(N) returns additionally a column vector V of weights in
%   the barycentric formula corresponding to the points X. The weights are
%   scaled so that max(abs(V)) = 1.
% 
%   In each case, N should be an integer greater than or equal to 2.
% 
%   See also CHEBPTS, LEGPTS, JACPTS, LEGPOLY, RADAUPTS.
%