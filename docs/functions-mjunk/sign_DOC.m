%% SIGN :: Sign function of a CHEBFUN.
%    G = SIGN(F) returns a piecewise constant CHEBFUN G such that G(x) = 1 in the
%    interval where F(x) > 0, G(x) = -1 in the interval where F(x) < 0 and G(x) =
%    0 in the interval where F(x) = 0. Breakpoints in G are introduced at zeros
%    of F.
% 
%    For the nonzero values of complex F, SIGN(F) = F./ABS(F)
% 
%  See also ABS, HEAVISIDE, ROOTS.
%