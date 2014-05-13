%% PLOT3 :: Plot for CHEBFUN objects in 3-D space.
%    PLOT3() is a three-dimensional analogue of PLOT().
% 
%    PLOT3(X, Y, Z), where X, Y, and Z are three CHEBFUN objects, plots a line in
%    3-space. X, Y, and Z may be array-valued, but must have the same number of
%    columns.
% 
%    Various line types, plot symbols, and colors may be obtained with PLOT3(X,
%    Y, Z, S) where S is a string of length 1, 2 or 3 containing characters
%    listed under the PLOT command.
% 
%    [HLINE, HPOINT, HJUMP] = PLOT(X, Y, Z) returns column vectors of handles to
%    lineseries objects (one for each column in the case of array-valued CHEBFUN
%    objects), corresponding to the line, point, and jump plots, respectively.
% 
%  Example: A helix:
%    t = chebfun('t', [0, 10*pi]);
%    plot3(sin(t), cos(t), t);
% 
%  See also PLOT, PLOTDATA.
%