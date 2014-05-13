% demo2.m
% Hrothgar, 13 May 2014
%
% Generate a plot for the front page.
% This script uses the FileExchange function export_fig.

LW = 'linewidth'; MS = 'markersize';

% Airy operator
L = chebop(@(x,u) 0.01*diff(u,2) - x.*u, [-5,5]);
L.bc = 'dirichlet';

% Solve
u = L \ 1;

h = figure;
plot(u, 'color', [.4 .7 .7], LW, 3), hold on

set(h, 'Position', [0 0 650 300])   % make it the right size
set(gca,'FontSize',15)              % increase tick font size
set(gca,'xcolor','w')
set(gca,'ycolor','w')
set(gca,'color','none')
set(gcf,'color','none')
% axis equal;                         % honesty
ylim(get(gca,'ylim')*1.2)
axis off;

export_fig('-m1.2', '-transparent', 'demo2.png')
close all
