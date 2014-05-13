% demo0.m
% Hrothgar, 11 Nov 2013
%
% Generate the plot for the front page.
% This script uses the FileExchange function export_fig.

LW = 'linewidth'; MS = 'markersize';

x = chebfun('x');
f = tanh(4*sin(40*x)).*exp(-x).*(2 + sin(7*x)) / 16;
g = sin(9*x).^3 / 4;
rr = roots(f - g);
h = figure;
plot([f g], rr, f(rr), 'k.', LW, 1.4, MS, 20);
set(h, 'color', 'w')                % make background color white
set(h, 'Position', [0 0 650 300])   % make it the right size
set(gca,'FontSize',15)              % increase tick font size
axis equal;                         % honesty

export_fig('-m.8', 'demo0.png')