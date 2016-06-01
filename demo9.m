% demo9.m
% Hrothgar, 29 May 2016
%
% Generate a plot for the front page.
% This script uses the FileExchange function export_fig.

LW = 'linewidth'; MS = 'markersize';
h = figure;

% http://www.chebfun.org/examples/roots/ResultantMethod.html
dom = [-6.5 6.5 -2.9 2.9];
f = chebfun2(@(x,y) y.*cos(y.^2+x)-.1,dom);
g = chebfun2(@(x,y) cos(x.^2/2).*sin(y.^2)-.1,dom);
r = roots(f, g, 'resultant');
plot(roots(f), 'color', [1 .7 .7]), hold on
plot(roots(g), 'color', [.7 .7 1])
plot(r(:,1), r(:,2), 'w.', 'markersize', 15)
axis(dom), axis equal, hold off


set(h, 'Position', [0 0 650 330])   % make it the right size
set(gca,'FontSize',15)              % increase tick font size
set(gca,'xcolor','w')
set(gca,'ycolor','w')
set(gca,'color','none')
set(gcf,'color','none')
% axis equal;                         % honesty
% ylim(get(gca,'ylim')*.8)
axis off;

export_fig('-m1.5', '-transparent', 'demo9.png')
close all


%{
% Construct a pair of 2D chebfuns
dom = [-3 10 -3 3];
f = chebfun2(@(x,y) y.*cos(y.^2+x)-.1,dom);
g = chebfun2(@(x,y) cos(x.^2/2).*sin(y.^2)-.1,dom);
% Compute their common roots
r = roots(f, g, 'resultant');
% Plot zero contours and mutual roots of f & g
plot(roots(f)), hold on, plot(roots(g))
plot(r(:,1), r(:,2), '.')
%}