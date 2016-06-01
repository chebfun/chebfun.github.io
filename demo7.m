% demo7.m
% Hrothgar, 29 May 2016
%
% Generate a plot for the front page.
% This script uses the FileExchange function export_fig.

LW = 'linewidth'; MS = 'markersize';
h = figure;

% Define a rectangular domain
dom = pi*[-2.2 2.2 -1 1]/2;
% Create a chebfun2
f = chebfun2(@(z) ...
    cos((z-1).^2)+exp((z+1).^2), dom);
% Plot a phase portrait of f
plot(f)

set(h, 'Position', [0 0 650 300])   % make it the right size
set(gca,'FontSize',15)              % increase tick font size
set(gca,'xcolor','w')
set(gca,'ycolor','w')
set(gca,'color','none')
set(gcf,'color','none')
% axis equal;                         % honesty

export_fig('-m2', '-transparent', 'demo7.png')
close all
