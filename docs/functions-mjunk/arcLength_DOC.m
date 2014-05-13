%% ARCLENGTH	Compute the length of the arc defined by a CHEBFUN.
%    ARCLENGTH(F) returns the arc length of the curve defined by CHEBFUN F in the
%    x-y plane over the interval where it is defined. If F is a CHEBFUN of
%    complex values, the output is the arc length of the curve in the complex
%    plane.
% 
%    ARCLENGTH(F, A, B) returns the arc length of F over the interval [A, B],
%    where [A, B] is a subinterval of the domain in which F is defined. In the
%    case of complex-valued F, ARCLENGTH(F, A, B) computes the length of the arc
%    whose ends correspond to A and B.
% 
%    If F is a quasimatrix, the arc length of each CHEBFUN in F will be computed
%    and a vector is returned.
% 
%  Examples:
%    f = chebfun(@(x) sin(x), [0 1]);
%    L = arcLength(f);
%