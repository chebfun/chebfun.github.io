% demo8.m
% Hrothgar, 29 May 2016
%
% Generate a plot for the front page.
% This script uses the FileExchange function export_fig.

LW = 'linewidth'; MS = 'markersize';
h = figure;

% http://www.chebfun.org/examples/sphere/HelmholtzDecomposition.html

f = spherefunv( @(x,y,z) y.*z.*cos(x.*y.*z), ...
        @(x,y,z) x.*z.*sin(4*x+.1*y+5*z.^2), ...
        @(x,y,z) 1+x.*y.*z );
psi = spherefun.poisson(vorticity(f), 0, 251);
quiver3(curl(psi)), hold on,
contour(psi, 'r-', 'linewidth', 2)
view([-36 8]), hold off


set(h, 'Position', [0 0 650 300])   % make it the right size
set(gca,'FontSize',15)              % increase tick font size
set(gca,'xcolor','w')
set(gca,'ycolor','w')
set(gca,'color','none')
set(gcf,'color','none')
% axis equal;                         % honesty
% ylim([-22 22])
axis off;

export_fig('-m1.2', '-transparent', 'demo8.png')
close all



%{
% Create a vector-valued function on the sphere
f = spherefunv( @(x,y,z) y.*z.*cos(x.*y.*z), ...
        @(x,y,z) x.*z.*sin(4*x+.1*y+5*z.^2), ...
        @(x,y,z) 1+x.*y.*z );
% Solve Poisson's equation
psi = spherefun.poisson(vorticity(f), 0, 251);
% Plot vector field and contour lines
% of the divergence-free component of f
quiver3(curl(psi)), hold on, contour(psi)
%}