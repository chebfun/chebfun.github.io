%% ATAN2 :: Four quadrant inverse tangent of a CHEBFUN.
%    ATAN2(Y, X) is the four quadrant arctangent of the real parts of the CHEBFUN
%    objects X and Y.  -pi <= ATAN2(Y, X) <= pi.
% 
%    ATAN2 is defined as:
%                   { atan(y/x),               x > 0
%                   { atan(y/x) + pi,  y >= 0, x < 0
%    atan2(y, x) =  { atan(y/x) - pi,  y < 0,  x < 0
%                   { pi/2,            y > 0,  x = 0
%                   { -pi/2,           y < 0,  x = 0
%                   { 0,               y = 0,  x = 0
% 
%  See also ATAN, ATAN2D.
%