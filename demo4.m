% demo4.m
% Hrothgar, 19 Jun 2014
%
% Generate a plot for the front page.
% This script uses the FileExchange function export_fig.

LW = 'linewidth'; MS = 'markersize';


u = chebfun(@(x) round(sin(pi*x.^2).*(2-x)-.1), 'splitting', 'on');
L = chebop(@(u) diff(u,2), [-1 1], 'dirichlet');
for dt = [0 .0001 .0005 .001]
    u = expm(L, dt, u);
    plot(u, 'color', [.5 .5 .5], LW, 2), hold on
end


set(h, 'Position', [0 0 650 340])   % make it the right size
set(gca,'FontSize',15)              % increase tick font size
set(gca,'xcolor','w')
set(gca,'ycolor','w')
set(gca,'color','none')
set(gcf,'color','none')
% axis equal;                         % honesty
ylim(get(gca,'ylim')*1.2)
axis off;

export_fig('-m1.2', '-transparent', '-painters', 'demo4.png')
close all
