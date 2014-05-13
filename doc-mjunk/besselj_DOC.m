%% BESSELJ :: Bessel function of first kind of a CHEBFUN.
%    J = BESSELJ(NU, F) returns J_nu(F), i.e., is the Bessel function of the
%    first kind, J_NU(Z) composed with the CHEBFUN object F. The order NU need
%    not be an integer, but must be a real scalar. The CHEBFUN F can be complex.
% 
%    J = BESSELJ(NU, F, SCALE) returns a scaled J_NU(F) specified by SCALE:
%          0 - (default) is the same as besselj(NU, F)
%          1 -  scales J_NU(F) by exp(-abs(imag(F)))
% 
%  See also AIRY, BESSELH, BESSLI, BESSELK, BESSELY.
%