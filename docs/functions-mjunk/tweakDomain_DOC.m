%% TWEAKDOMAIN :: Adjust nearby common break points in domains of CHEBFUN objects.
%    [F, G] = TWEAKDOMAIN(F, G) adjusts the domains of definition of two CHEBFUN
%    objects F and G if one or more of the entries in F.DOMAIN and G.DOMAIN are
%    sufficiently close. In particular, if abs(F.DOMAIN(j)-G.DOMAIN(k)) <
%    1e-15*max(HSCALE(F),HSCALE(G)) = TOL, then F.DOMAIN(j) and G.DOMAIN(k) are
%    set to (F.DOMAIN(j)+G.DOMAIN(k))/2 (or the nearest integer value if this is
%    less than TOL away). However, if either F or G has two breakpoints which are
%    very close, for example, F.DOMAIN(k+1) - F.DOMAIN(k) < 2*TOL, then these
%    will not be adjusted.
% 
%    [F, G] = TWEAKDOMAIN(F, G, TOL) uses the specified tolerance TOL for
%    determining nearby break points.
% 
%    [F, G, J, K] = TWEAKDOMAIN(F, G) returns the indices of the modified
%    entries F.DOMAIN(J) and G.DOMAIN(K).
% 
%  See also CHEBFUN/OVERLAP.
%