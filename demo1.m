% demo1.m
% Hrothgar, 12 May 2014
%
% Generate a plot for the front page.
% This script uses the FileExchange function export_fig.

LW = 'linewidth'; MS = 'markersize';

x = chebfun('x');
f = exp(-x).*tanh(4*sin(40*x)).*(2 + sin(7*x)) / 16;
g = (exp(sin(12*x) - x) + x - 2) / 12;
rr = roots(f - g);
h = figure;
plot(f, 'color', [.7 .7 .4], LW, 3), hold on
plot(g, 'color', [.4 .7 .7], LW, 3), hold on
plot(rr, f(rr), 'o', 'color', [1 .8 .9], MS, 7, LW, 2);
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
