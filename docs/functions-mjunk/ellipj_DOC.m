%% ELLIPJ :: Jacobi elliptic functions.
%    [SN, CN, DN] = ELLIPJ(U, M) returns CHEBFUNS for the compositions Sn(U)
%    Cn(U), and Dn(U), where Sn, Cn, and Dn are the Jacobi elliptic functions
%    with parameter M. U may be a scalar or a CHEBFUN, and M must be a CHEBFUN
%    or scalar in the range 0 <= M <= 1.
% 
%    [SN, CN, DN] = ELLIPJ(U, M, TOL) composes the elliptic functions to the
%    accuracy TOL instead of the default TOL = EPS.
% 
%    Complex values of U are accepted, but the resulting computation may be
%    inaccurate. Use ELLIPJC from Driscoll's SC toolbox instead.
% 
%    Note: Some definitions of the Jacobi elliptic functions use the modulus k
%    instead of the parameter M. They are related by M = k^2.
% 
%  See also ELLIPKE.
%