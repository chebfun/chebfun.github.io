% demo4.m
% Hrothgar, 29 May 2016
%
% Generate a plot for the front page.
% This script uses the FileExchange function export_fig.

LW = 'linewidth'; MS = 'markersize';
h = figure;

% Create a chebfun on the interval [-3,3]
x = chebfun('x', [-3 3]);
% Define a potential function
V = abs(x);
% Plot the first 8 eigenstates of
% the Schrodinger operator
quantumstates(V, 8);

hold on
plot(V, 'linewidth', 2, 'color', 'white')
ylim([-.05 1.7])

set(get(gca,'Title'),'Color','White')
set(get(gca,'Title'),'FontSize',16)
set(h, 'Position', [0 0 650 240])   % make it the right size
set(gca,'FontSize',15)              % increase tick font size
set(gca,'xcolor','w')
set(gca,'ycolor','w')
set(gca,'color','none')
set(gcf,'color','none')
% axis equal;                         % honesty
axis off;

export_fig('-m1.2', '-transparent', 'demo4.png')
close all
