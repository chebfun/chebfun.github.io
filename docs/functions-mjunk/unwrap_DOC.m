%% UNWRAP :: Unwrap CHEBFUN phase angle.
%    UNWRAP(P) unwraps radian phases P by changing absolute jumps greater than or
%    equal to pi to their 2*pi complement. It unwraps along the continuous
%    dimension of P and leaves the first FUN along this dimension unchanged.
% 
%    UNWRAP(P, TOL) uses a jump tolerance TOL, rather than the default TOL = pi.
% 
%    See also ABS, ANGLE.
%