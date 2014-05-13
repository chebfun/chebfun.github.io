%% ROOTS :: Roots of a CHEBFUN.
%    ROOTS(F) returns the roots of F in its domain of definition. By default,
%    roots are returned at jumps in F which pass through zero, and if F is
%    identically zero on a part of its domain, then a single root is returned at
%    the midpoint. Each of these behaviours can be modified using the optional
%    inputs described below:
% 
%    ROOTS(F, 'nojump') prevents ROOTS() from returning points where F changes
%    sign due to a jump discontinuity, such as roots(chebfun(@sign, 'splitting',
%    'on')).
% 
%    ROOTS(F, 'nozerofun') prevents ROOTS() from returning a zero at the midpoint
%    of the domain of F when F if identically zero, such as ROOTS(chebfun(0)).
%  
%    ROOTS(F, 'norecursion') deactivates the recursion procedure used to compute
%    roots (see the Guide 3: Rootfinding and minima and maxima for more
%    information on this recursion procedure).
% 
%    ROOTS(F, 'all') returns the roots of all the FUN objects representing the
%    smooth pieces of F. Note that by default this disables recursion, and so is
%    equivalent to ROOTS(F, 'all', 'norecursion').
% 
%    ROOTS(F, 'complex') returns the real and complex roots of the FUN objects
%    representing the smooth pieces of F that are determined to be non-spurious.
%    (See CHEBELLIPSEPLOT). This capability may remove some spurious roots that
%    can appear if using ROOTS(F, 'all'). ROOTS(F, 'complex') is equivalent to
%    ROOTS(F, 'complex', 'recursion').
% 
%    ROOTS(F, 'all', 'recursion') and ROOTS(F, 'complex','norecursion') can be
%    used to activate and deactivate the recursion procedure respectively, to
%    compute the roots as explained in the 'all' and 'complex' modes.
%