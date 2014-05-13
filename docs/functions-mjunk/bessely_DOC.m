%% BESSELY :: Bessel function of second kind of a CHEBFUN.
%    Y = BESSELY(NU, F) computes the Bessel function of the second kind Y_NU(F)
%    of the nonzero CHEBFUN F. The order NU need not be an integer but must be
%    real. The argument F can be complex but must not pass through the origin.
%    The result is real where F is positive.
% 
%    Y = BESSELY(NU, F, SCALE) returns a scaled Y_NU(F) specified by SCALE:
%         0 - (default) is the same as BESSELY(NU, F)
%         1 -  scales Y_NU(F) by exp(-abs(imag(F)))
% 
%    Y = BESSELY(NU, F, SCALE, PREF) uses the CHEBFUNPREF object PREF when
%    building the CHEBFUN Y.
% 
%  See also AIRY, BESSELH, BESSELI, BESSELJ, BESSELK.
% 
%  Copyright 2014 by The University of Oxford and The Chebfun Developers.
%  See http://www.chebfun.org for Chebfun information.
%