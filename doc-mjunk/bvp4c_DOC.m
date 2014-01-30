%% BVP4C :: Solve boundary value problems for ODEs by collocation with CHEBFUN.
%    Y = BVP4C(ODEFUN, BCFUN, Y0) applies the standard BVP4C method to solve a
%    boundary-value problem. ODEFUN and BCFUN are as in BVP4C. The Y0 argument is
%    a CHEBFUN that represents the initial guess to the solution Y. Its domain
%    defines the domain of the problem, and the length of the CHEBFUN Y0 is used
%    to set the number of points in an initial equispaced mesh. Note that it is
%    not necessary to call BVPINIT.
% 
%    [Y, P] = BVP4C(ODEFUN, BCFUN, Y0, PARAM, OPTS) allows you to specify an
%    initial guess for any additional parameters to be found for the solution,
%    and an options vector to guide the solution. See the built in BVP4C and
%    BVPSET for details. You may specify either extra argument, or both. An
%    additional output is used to return the parameter values found.
% 
%    It is possible to take a crude continuation approach by solving for a simple
%    variation of the problem, then using the resulting CHEBFUN as the initial
%    guess for a more difficult version.
% 
%  Example (using built-in BVP demo functions):
%    y0 = chebfun([0, 0], [0, 4]);
%    y = bvp4c(@twoode, @twobc, y0);
%    plot(y)
% 
%  See also BVPINTI, BVPSET, BVP5C, ODE113.
%