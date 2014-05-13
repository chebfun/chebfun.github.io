%% LEBESGUE :: Lebesgue function for a set of interpolation points.
%    L = LEBESGUE(X), where X is a set of points in [-1, 1], returns the
%    Lebesgue function associated with polynomial interpolation in those points.
% 
%    L = LEBESGUE(X, a, b) or LEBESGUE(X, [a, b]), where X is a set of points in
%    [a, b] returns the Lebesgue function associated with polynomial
%    interpolation in those points in that domain.
% 
%    [L, LCONST] = LEBESGUE(...) also returns the Lebesgue constant.
% 
%    Example:
%      The following commands compare the Lebesgue functions and constants for 8
%      Chebyshev, Legendre, and equispaced points in [-1, 1]:
% 
%      n = 8;
%      [L, c] = lebesgue(chebpts(n));
%      subplot(1, 3, 1),  plot(L),  title(['Chebyshev: ' num2str(c)])
%      grid on,  axis([-1 1 0 8])
%      [L, c] = lebesgue(legpts(n));
%      subplot(1, 3, 2),  plot(L),  title(['Legendre: ' num2str(c)])
%      grid on,  axis([-1 1 0 8])
%      [L, c] = lebesgue(linspace(-1, 1, n));
%      subplot(1, 3, 3),  plot(L),  title(['Equispaced: ' num2str(c)])
%      grid on,  axis([-1 1 0 8])
%