%% ELLIPKE :: Complete elliptic integral of a CHEBFUN.
%    [K, E] = ELLIPKE(M) returns the value of the complete elliptic integrals of
%    the first and second kinds, composed with the CHEBFUN M.  As currently
%    implemented, M is limited to 0 <= M <= 1.
% 
%    [K, E] = ELLIPKE(M, TOL) computes the complete elliptic integrals to the
%    accuracy TOL instead of the default TOL = EPS(CLASS(M)).
% 
%    Some definitions of the complete elliptic integrals use the modulus k
%    instead of the parameter M.  They are related by M = k^2.
% 
%    See also ELLIPJ.
%