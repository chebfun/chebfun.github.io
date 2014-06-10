function guideFormats(flag)
%GUIDEFORMATS   Set default formats for the Chebfun Guide.
%
%   Currently is a near-duplicate of ATAPformats.

% Copyright 2014 by The University of Oxford and The Chebfun Developers. 
% See http://www.chebfun.org/ for Chebfun information.

if ( nargin == 0 )
    % Change to the ATAP settings.

    % evalin('caller', 'clear all')
    close all
    chebfunpref.setDefaults('factory');
    cheboppref.setDefaults('factory');
    set(0, 'defaultfigureposition', [0 0 600 270]);
    set(0, 'defaultaxeslinewidth',  0.5);
    set(0, 'defaultaxesfontsize',   13);
    set(0, 'defaultlinelinewidth',  1.6);
    set(0, 'defaultpatchlinewidth', 1.6);
    set(0, 'defaultlinemarkersize', 6);
    set(0, 'defaultfigurecolor',    'none');
    set(0, 'defaultaxescolor',      'none');

    format compact
    format long
    warning('off', 'MATLAB:gui:latexsup:UnableToInterpretLaTeXString');
    warning('off', 'MATLAB:gui:latexsup:UnsupportedFont');
    
elseif ( any(strcmpi(flag, {'reset', 'factory'})) )
    % Revert to MATLAB factory values.

    close all
    set(0, 'defaultfigureposition', 'factory');
    set(0, 'defaultaxeslinewidth',  'factory');
    set(0, 'defaultaxesfontsize',   'factory');
    set(0, 'defaultlinelinewidth',  'factory');
    set(0, 'defaultpatchlinewidth', 'factory');
    set(0, 'defaultlinemarkersize', 'factory');
    set(0, 'defaultfigurecolor',    'factory');
    set(0, 'defaultaxescolor',      'factory');
    chebfunpref.setDefaults('factory');
    cheboppref.setDefaults('factory');
    
end

end    
