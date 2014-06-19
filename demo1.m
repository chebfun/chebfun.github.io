% demo1.m
% Hrothgar, 12 May 2014
%
% Generate a plot for the front page.
% This script uses the FileExchange function export_fig.

LW = 'linewidth'; MS = 'markersize';

f = chebfun(@(x) sin(x.^2)+sin(x).^2, [0,10]);
g = chebfun(@(x) exp(-(x-5).^2/10), [0,10]);
rr = roots(f - g);
h = figure;
plot(f, 'color', [.9 .8 .5], LW, 2), hold on
plot(g, 'color', [.5 .8 .9], LW, 2), hold on
plot(rr, f(rr), 'o', 'color', [1 1 1], MS, 7, LW, 2);
set(h, 'Position', [0 0 650 300])   % make it the right size
set(gca,'FontSize',15)              % increase tick font size
set(gca,'xcolor','w')
set(gca,'ycolor','w')
set(gca,'color','none')
set(gcf,'color','none')
axis equal;                         % honesty
ylim(get(gca,'ylim')*1.2)
axis off;

export_fig('-m1.2', '-transparent', 'demo1.png')
close all
