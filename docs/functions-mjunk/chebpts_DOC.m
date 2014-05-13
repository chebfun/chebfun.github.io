%% CHEBPTS ::  :: Chebyshev points.
%    CHEBPTS(N) returns N Chebyshev points of the 2nd-kind in [-1,1].
% 
%    CHEBPTS(N, D), where D is vector of length 2 and N is a scalar integer,
%    scales the nodes and weights for the interval [D(1),D(2)]. If length(D) > 2
%    and N a vector of length(D)-1, then CHEBPTS(N, D) returns a column vector of
%    the stacked N(k) Chebyshev points on the subintervals D(k:k+1). If length(N)
%    is 1, then D is treated as [D(1),D(end)].
% 
%    [X, W] = CHEBPTS(N, D) returns also a row vector of the (scaled) weights for
%    Clenshaw-Curtis quadrature (computed using [1]). (For nodes and weights of
%    Gauss-Chebyshev quadrature, use [X, W] = JACPTS(N, -.5, -.5, D))
% 
%    [X, W, V] = CHEBPTS(N, D) returns, in addition to X and W, the barycentric
%    weights V corresponding to the Chebyshev points X. The weights are scaled to
%    have infinity norm 1.
% 
%    [X, W, V] = CHEBPTS(N, KIND) or CHEBPTS(N, D, KIND) returns Chebyshev points
%    and weights of the 1st-kind if KIND = 1 and 2nd-kind if KIND = 2 (default).
% 
%    [1] Jarg Waldvogel, "Fast construction of the Fejer and Clenshaw-Curtis
%    quadrature rules", BIT Numerical Mathematics, 46, (2006), pp 195-202. 
% 
%  See also LEGPTS, JACPTS, LAGPTS, and HERMPTS.
%