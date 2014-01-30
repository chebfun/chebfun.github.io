%% CHEBPOLYPLOT :: Display Chebyshev coefficients graphically.
%    CHEBPOLYPLOT(F) plots the Chebyshev coefficients of a CHEBFUN F on a
%    semilogy scale. A horizontal line at the epslevel of F is also plotted. If
%    F is an array-valued CHEBFUN or has breakpoints, then a curve is plotted
%    for each FUN of each component (column) of F.
% 
%    CHEBPOLYPLOT(F, S) allows further plotting options, such as linestyle,
%    linecolor, etc, in the standard MATLAB manner. If S contains a string
%    'LOGLOG', the coefficients will be displayed on a log-log scale. If S
%    contains a string 'NOEPSLEVEL' the epslevel is not plotted.
% 
%    H = CHEBPOLYPLOT(F) returns a column vector of handles to lineseries
%    objects. The final entry is that of the epslevel plot.
% 
%  See also CHEBFUN/PLOT
%