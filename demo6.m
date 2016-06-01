% demo6.m
% Hrothgar, 29 May 2016
%
% Generate a plot for the front page.
% This script uses the FileExchange function export_fig.

LW = 'linewidth'; MS = 'markersize';
h = figure;

% Create a chebfun
x = chebfun('x');
f = exp(-1./(x+1));
% Plot the Chebyshev coefficients of f
plotcoeffs(f,'.','markersize',9,'markercolor',[.6,.8,1])

set(get(gca,'Title'),'Color','White')
set(h, 'Position', [0 0 650 261])   % make it the right size
set(gca,'FontSize',15)              % increase tick font size
set(gca,'xcolor','w')
set(gca,'ycolor','w')
set(gca,'color','none')
set(gcf,'color','none')
% axis equal;                         % honesty
ylim(get(gca,'ylim')*1.2)

export_fig('-m1.2', '-transparent', 'demo6.png')
close all
