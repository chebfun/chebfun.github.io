%% RESTRICT :: Restrict a CHEBFUN object to a subinterval.
%    G = RESTRICT(F, [S1, S2]) returns a CHEBFUN G defined on the interval [S1,
%    S2] which agrees with F on that interval. Any interior breakpoints in
%    F.DOMAIN within [S1, S2] are kept in G.DOMAIN.
% 
%    G = RESTRICT(F, S), where S is a row vector, will introduce additional
%    interior breakpoints at S(2:end-2).
% 
%    In both cases, if S(1) > S(end), S(1) < F.domain(1), or S(end) >
%    F.domain(end), then an error is returned. If S is empty or a scalar, then an
%    empty CHEBFUN G is returned.
% 
%    G = F{S} is an equivalent syntax.
% 
%  See also OVERLAP, SUBSREF, DEFINE.
%