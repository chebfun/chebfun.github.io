%% PCHIP :: CHEBFUN Cubic Hermite interpolating polynomial.
%    F = CHEBFUN.PCHIP(X, Y) returns a CHEBFUN F representing a certain
%    shape-preserving piecewise cubic Hermite interpolant to the values Y at the
%    sites X. X must be a vector. If Y is a vector, then Y(j) is taken as the
%    value to be matched at X(j), hence Y must be of the same length as X. If Y
%    is a matrix, then Y(:,j) is taken as the value to be matched at X(j).
% 
%    F = CHEBFUN.PCHIP(X, Y, D) is similar, but F is defined on the domain D.
% 
%   Example:
%     x = -3:3;
%     y = [-1 -1 -1 0 1 1 1];
%     plot(chebfun.pchip(x, y)); hold on, 
%     plot(chebfun.spline(x, y), '-r');
%     plot(x, y, 'or'), hold off
%     legend('pchip', 'spline')
% 
%  See also SPLINE, INTERP1.
%