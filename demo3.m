% demo3.m
% Hrothgar, 19 Jun 2014
%
% Generate a plot for the front page.
% This script uses the FileExchange function export_fig.

LW = 'linewidth'; MS = 'markersize';

% The Dixon-Szego function
f = @(x,y) (4-2.1*x.^2+ x.^4/3).*x.^2 ...
            + x.*y + 4*(y.^2-1).*y.^2;
% Create a chebfun2
F = chebfun2(f,[-2 2 -1.25 1.25]);
% Find the minimum and plot it
[minf,minx] = min2(F);
contour(F,25,LW,1.2), axis([-2 2 -1.25 1.25])
colormap(autumn*3/4+1/4)
hold on, plot(minx(1),minx(2),'.w',MS,20)

set(h, 'Position', [0 0 650 340])   % make it the right size
set(gca,'FontSize',15)              % increase tick font size
set(gca,'xcolor','w')
set(gca,'ycolor','w')
set(gca,'color','none')
set(gcf,'color','none')
% axis equal;                         % honesty
ylim(get(gca,'ylim')*1.2)
axis off;

export_fig('-m1.2', '-transparent', 'demo3.png')
close all
