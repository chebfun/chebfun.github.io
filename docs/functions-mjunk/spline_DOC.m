%% SPLINE :: CHEBFUN cubic spline data interpolation.
%    F = CHEBFUN.SPLINE(X, Y) returns a CHEBFUN F with domain [X(1), X(end)]
%    representing the cubic spline interpolant to the data values Y at the data
%    sites X. X must be a vector. If Y is a vector, then Y(j) is taken as the
%    value to be matched at X(j), hence Y must be of the same length as X  -- see
%    below for an exception to this. If Y is a matrix, then Y(:,j) is taken as
%    the value to be matched at X(j).
% 
%    F = CHEBFUN.SPLINE(X, Y, D) is similar, but F is defined on the domain D.
% 
%    Ordinarily, the not-a-knot end conditions are used. However, if Y contains
%    two more values than X has entries, then the first and last value in Y are
%    used as the end slopes for the cubic spline.
% 
%    Example:
%    This generates a sine-like spline curve and samples it over a finer mesh:
%        x = 0:10;  y = sin(x);
%        f = chebfun.spline(x, y);
%        plot(x, y, 'o', f)
% 
%  See also INTERP1, PCHIP.
%