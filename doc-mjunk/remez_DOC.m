%% REMEZ :: Best polynomial or rational approximation.
%    P = REMEZ(F, M) computes the best polynomial approximation of degree M to
%    the CHEBFUN F in the infinity norm using the Remez algorithm.
% 
%    [P, Q] = REMEZ(F, M, N) computes the best rational approximation P/Q of type
%    (M, N) to the CHEBFUN F using the Remez algorithm.
% 
%    [P, Q, R_HANDLE] = REMEZ(F, M, N) does the same but additionally returns a
%    function handle R_HANDLE for evaluating the rational function P/Q.
% 
%    [...] = REMEZ(..., 'tol', TOL) uses the value TOL as the termination
%    tolerance on the increase of the levelled error.
% 
%    [...] = REMEZ(..., 'display', 'iter') displays output at each iteration.
% 
%    [...] = REMEZ(..., 'maxiter', MAXITER) sets the maximum number of allowable
%    iterations to MAXITER.
% 
%    [...] = REMEZ(..., 'plotfcns', 'error') plots the error after each iteration
%    while the algorithm executes.
% 
%    [P, ERR] = REMEZ(...) and [P, Q, R_HANDLE, ERR] = REMEZ(...) also returns
%    the maximum error ERR.
% 
%    [P, ERR, STATUS] = REMEZ(...) and [P, Q, R_HANDLE, ERR, STATUS] = REMEZ(...)
%    also return a structure array STATUS with the following fields:
%       STATUS.DELTA  - Obtained tolerance.
%       STATUS.ITER   - Number of iterations performed.
%       STATUS.DIFFX  - Maximum correction in last trial reference.
%       STATUS.XK     - Last trial reference on which the error equioscillates.
% 
%    This code is quite reliable for polynomial approximations but rather
%    fragile for rational approximations.  Better results can often be obtained
%    with CF(), especially if f is smooth.
% 
%  References:
% 
%    [1] Pachon, R. and Trefethen, L. N.  "Barycentric-Remez algorithms for best
%    polynomial approximation in the chebfun system", BIT Numerical Mathematics,
%    49:721-742, 2009.
% 
%    [2] Pachon, R.  "Algorithms for Polynomial and Rational Approximation".
%    D. Phil. Thesis, University of Oxford, 2010 (Chapter 6).
% 
%  See also CF.
%