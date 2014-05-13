%% CONV :: Convolution of CHEBFUN objects.
%    H = CONV(F, G) produces the convolution of CHEBFUN objects F and G:
%                      - 
%                     /
%            H(x) =   |    F(t) G(x-t) dt,  x in [a + c, b + d]
%                     /
%                    -
%    where domain(F) is [a, b] and domain(G) is [c, d]. The integral is taken
%    over all t for which the integrand is defined: max(a, x - d) <= t <= min(b,
%    x - c).  The breakpoints of H are all pairwise sums of the breakpoints of F
%    and G.
% 
%    Note that CONV only supports piecewise-smooth functions on bounded domains.
% 
%    Example:
%      f = chebfun(1/2); g = f;
%      subplot(2, 2, 1), plot(f)
%      for j = 2:4, g = conv(f, g); subplot(2, 2, j), plot(g), end
%      figure, for j = 1:4, subplot(2,2,j), plot(g), g = diff(g); end
%