function exampleFormats(flag)
%EXAMPLEFORMATS   Set default formats for Chebfun examples.
%
%   Currently is a near-duplicate of ATAPformats.

% Copyright 2014 by The University of Oxford and The Chebfun Developers. 
% See http://www.chebfun.org/ for Chebfun information.

if ( nargin == 0 )
    % Change to the ATAP settings.

    % evalin('caller', 'clear all')
    % close all
    set(0, 'defaultfigureposition', [0 0 600 270]);
    set(0, 'defaultaxeslinewidth',  0.9);
    set(0, 'defaultaxesfontsize',   12);
    set(0, 'defaultlinelinewidth',  1.5);
    set(0, 'defaultpatchlinewidth', 1.5);
    set(0, 'defaultlinemarkersize', 15); 
    format compact
    format long
    % chebpref.setDefaults('factory');
    
elseif ( any(strcmpi(flag, {'reset', 'factory'})) )
    % Revert to MATLAB factory values.

    % close all
    set(0, 'defaultfigureposition', 'factory');
    set(0, 'defaultaxeslinewidth',  'factory');
    set(0, 'defaultaxesfontsize',   'factory');
    set(0, 'defaultlinelinewidth',  'factory');
    set(0, 'defaultpatchlinewidth', 'factory');
    set(0, 'defaultlinemarkersize', 'factory');
    % chebpref.setDefaults('factory');
    
end

end    
