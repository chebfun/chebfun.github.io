%% WHICHINTERVAL :: Determine which interval a point lies in.
%    INDX = WHICHINTERVAL(DOM, X) returns a matrix of size(X) whos j,k entry is a
%    positive integer denoting which subinterval of the domain DOM (which should
%    be a sorted real-valued vector) the real part of the point X(j,k) is
%    positioned. INDX(j,k) = +/-INF if X(j,k) < DOM(1) or X(j,k) > DOM(end),
%    respectively.
%