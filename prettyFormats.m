% prettyFormats.m
% Hrothgar, 23 May 2014
%
% Self-explanatory!

function prettyFormats(flag)

if ( nargin == 0 )
    set(0, 'defaultfigureposition', [0 0 650 300]);
    set(0, 'defaultaxeslinewidth',  0.9);
    set(0, 'defaultaxesfontsize',   14);
    set(0, 'defaultlinelinewidth',  1.4);
    set(0, 'defaultpatchlinewidth', 1.4);
    set(0, 'defaultlinemarkersize', 18);
    set(0, 'defaultfigurecolor',    'none');
    set(0, 'defaultaxescolor',      'none');
    format compact
    format long

elseif ( any(strcmpi(flag, {'reset', 'factory'})) )
    set(0, 'defaultfigureposition', 'factory');
    set(0, 'defaultaxeslinewidth',  'factory');
    set(0, 'defaultaxesfontsize',   'factory');
    set(0, 'defaultlinelinewidth',  'factory');
    set(0, 'defaultpatchlinewidth', 'factory');
    set(0, 'defaultlinemarkersize', 'factory');

end

end
