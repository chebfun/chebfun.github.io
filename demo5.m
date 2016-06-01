% demo5.m
% Hrothgar, 29 May 2016
%
% Generate a plot for the front page.
% This script uses the FileExchange function export_fig.

LW = 'linewidth'; MS = 'markersize';
h = figure;

% Create operator for the Ginzburg-Landau problem
dom = 20*[-1.2 3.2 -1 1];  tspan = [0 46.5];
S = spinop2(dom,tspan); S.linearPart = @(u) lap(u);
S.nonlinearPart = @(u) u - (1+1.5i)*u.*(abs(u).^2);
% Set an initial condition
S.init = chebfun2(@(x,y) ...
    (1i*x+y).*exp(-.1*(x.^2+y.^2)), dom);
% Solve the PDE and plot
u1 = spin2(S,'plot','off'); plot(real(u1));
view(0,90), axis equal, axis off


set(h, 'Position', [0 0 650 300])   % make it the right size
set(gca,'FontSize',15)              % increase tick font size
set(gca,'xcolor','w')
set(gca,'ycolor','w')
set(gca,'color','none')
set(gcf,'color','none')
% axis equal;                         % honesty
ylim([-22 22])
axis off;

export_fig('-m1.2', '-transparent', 'demo5.png')
close all


%{
% Create operator for the Ginzburg-Landau problem
dom = 20*[-1.2 3.2 -1 1];  tspan = [0 46.5];
S = spinop2(dom,tspan); S.linearPart = @(u) lap(u);
S.nonlinearPart = @(u) u - (1+1.5i)*u.*(abs(u).^2);
% Set an initial condition
S.init = chebfun2(@(x,y) ...
    (1i*x+y).*exp(-.1*(x.^2+y.^2)), dom);
% Solve the PDE and plot
u1 = spin2(S,'plot','off'); plot(real(u1));
view(0,90), axis equal, axis off
%}