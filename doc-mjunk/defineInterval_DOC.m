%% DEFINEINTERVAL :: Supply a new definition for a CHEBFUN on a subinterval.
%    F = DEFINEINTERVAL(F, S, G) redefines the CHEBFUN F by the CHEBFUN or double
%    G in the interval [S(1), S(end)] in F.DOMAIN. If F is array-valued then G
%    should have the same number of columns, i.e., SIZE(F, 2) = SIZE(G, 2), and
%    if G is a CHEBFUN it must be defined on a domain containing [S(1), S(end)].
%    Any new breakpoints S(2:end-1) are also introduced into F. 
% 
%    If G is empty then the interval SS = [S(1), S(end)] is removed from F. If SS
%    is a strict subset of F.domain, then the breakpoints of F greater than
%    S(end) are shifted to the left (as a CHEBFUN cannot be defined on a domain
%    with gaps in it).
% 
%    S must be a strictly increasing vector. Use F = DEFINEPOINT(F, S, G(S)) to
%    the define F at a single point.
% 
%    An equivalent syntax is F{S1, S2} = G or F{S(1), S(2), ..., S(end)} = G.
% 
%  See also SUBSASGN, RESTRICT, DEFINEPOINT.
%