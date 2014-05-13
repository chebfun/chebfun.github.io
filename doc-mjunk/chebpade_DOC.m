%% CHEBPADE :: Chebyshev-Pade approximation.
%    [P, Q, R_HANDLE] = CHEBPADE(F, M, N) computes polynomials P and Q of degree
%    M and N, respectively, such that the rational function P/Q is the type (M,
%    N) Chebyshev-Pade approximation of type Clenshaw-Lord to the CHEBFUN F. That
%    is, the Chebyshev series of P/Q coincides with that for the CHEBFUN F up to
%    the maximum possible order for the polynomial degrees permitted. R_HANDLE is
%    a function handle for evaluating the rational function.
% 
%    [P, Q, R_HANDLE] = CHEBPADE(F, M, N, TYPE) allows one to additionally
%    specify the type of Chebyshev-Pade approximation sought. If TYPE is set to
%    'clenshawlord', the Clenshaw-Lord approximation as described above is used.
%    Alternatively, setting TYPE to 'maehly' computes a Maehly-type
%    approximation, which satisfies a linearized version of the Chebyshev-Pade
%    conditions.
% 
%    [P, Q, R_HANDLE] = CHEBPADE(F, M, N, TYPE, K) uses only the K-th partial sum
%    in the Chebyshev expansion of F when computing the approximation. CHEPADE(F,
%    M, N, K) is shorthand for CHEBPADE(F, M, N, 'clenshawlord', K).
% 
%  See also PADEAPPROX.
%