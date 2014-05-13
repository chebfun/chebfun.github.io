%% CF :: Caratheodory-Fejer approximation
%    [P, Q, R_HANDLE] = CF(F, M, N) computes a type (M, N) rational CF
%    approximant to CHEBFUN F defined on [a, b], which must consist of just a
%    single FUN. P and Q are CHEBFUNs representing the numerator and denominator
%    polynomials. R_HANDLE is an anonymous function that evaluates P/Q.
% 
%    [P, Q, R_HANDLE, S] = CF(F, M, N) also returns S, the associated CF singular
%    value, an approximation to the minimax error.
% 
%    [P, Q, R_HANDLE, S] = CF(F, M, N, K) does the same but uses only the K-th
%    partial sum in Chebyshev expansion of F.
% 
%    For polynomial CF approximation, use N = 0 or N = [] or only provide two
%    input arguments. If P and S are required, four output arguments must be
%    specified.
% 
%    If F is a quasimatrix then so are the outputs P and Q, R_HANDLE is a cell
%    array of function handles and s is a vector.
% 
%    Rational CF approximation can be very ill-conditioned for non-smooth
%    functions. If the program detects this, a warning message is given and the
%    results may be wrong.
% 
%    CF = Caratheodory-Fejer approximation is a near-best approximation that is
%    often indistinguishable from the true best approximation (which for
%    polynomials can be computed using REMEZ(F, M)), but often much faster to
%    compute.
% 
%    Examples:
% 
%    Compute a quadratic polynomial CF approximant to exp(x) on [-1, 1]:
% 
%      [p, q, r] = cf(chebfun(@exp), 2);
% 
%    Compute a type-(4, 4) rational CF approximant to the same function:
% 
%      [p, q, r] = cf(chebfun(@exp), 4, 4);
% 
%    References:
% 
%    [1] M. H. Gutknecht and L. N. Trefethen, "Real polynomial Chebyshev
%        approximation by the Caratheodory-Fejer method", SIAM J. Numer. Anal. 19 
%        (1982), 358-371.
% 
%    [2] L. N. Trefethen and M. H. Gutknecht, "The Caratheodory-Fejer method fpr
%        real rational approximation", SIAM J. Numer. Anal. 20 (1983), 420-436.
% 
%  See also REMEZ.
%