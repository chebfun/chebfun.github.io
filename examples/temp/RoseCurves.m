%% Rose curves
% Hrothgar, June 2014

%%
% (Chebfun example geom/RoseCurves.m)
% [Tags: #sinewaves, #geometry, #polar]

%%
% A rose curve is a sinusoid in polar coordinates, that is,
% $$ r = \sin(k\theta). $$
% Rational values of $k$ produce closed curves, while irrational values
% produce curves of infinite length that fill the unit disc. If $k = 1$, then
% the result is a circle.

%%
% The Wikipedia page about rose curves [1] contains a nice image of many roses
% for different rational values of $k$. This Example reproduces that image.

%%
% In order to plot the roses, we will paramatrize them in the complex plane
% using Cartesian coordinates:
% $$ x(t) = \cos(k t) \sin(t), $$
% $$ y(t) = i \cos(k t) \cos(t). $$
% Here is a function that creates a
% chebfun of a rose based on the parameter $k = m/n$ for two integers $m$ and
% $n$. The domain must be at least as long as $2\pi$ times the least common
% multiple of $m$ and $n$.
roseCurve = @(m,n) chebfun(@(t) cos(m/n*t).*cos(t)+1i*cos(m/n*t).*sin(t), ...
                           [0, 2*pi*lcm(m,n)]);

%%
% Here is the image reproduced.

LW = 'linewidth';
figure('position', [0 0 680 680]), hold on
N = 6;
for m = 1:N
    for n = 1:N
        f = roseCurve(m,n);
        offset = 2.5*m - 2.5i*n;
        plot(f + offset, 'k-', LW, 1)
    end
end
axis equal tight off

%%
% And here is a more ambitious image of the same kind, where the patterns
% along diagonals become clear.

tic
clf, hold on
N = 12;
for m = 1:N
    for n = 1:N
        f = roseCurve(m,n);
        offset = 2.5*m - 2.5i*n;
        plot(f + offset, 'k-', LW, .8)
    end
end
axis equal tight off
time = toc;

%%
% The above image did not take long to produce:
time

%% References
%
% 1. [https://en.wikipedia.org/wiki/Rose_curve](https://en.wikipedia.org/wiki/Rose_curve)
