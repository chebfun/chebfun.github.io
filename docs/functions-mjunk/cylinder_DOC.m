%% CYLINDER Generate cylinder. Surface revolution of a chebfun to form a chebfun2.
% 
%    [X, Y, Z] = CYLINDER(R) forms the unit cylinder based revolving the 
%    function R about the z-axis. X, Y, and Z are chebfun2 objects such that
%    surf(X,Y,Z) displays the cylinder. 
% 
%    F = CYLINDER(R) constructs the chebfun2v that represents the surface of
%    revolution. SURF(F) displays the cylinder.
% 
%    Omitting output arguments causes the cylinder to be displayed with a SURF
%    plot.
% 
%  See also CHEBFUN2/SURF, CYLINDER, CHEBFUN2/SPHERE.
%