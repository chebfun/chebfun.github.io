%% PLOT :: Basic linear plot for CHEBFUN objects.
%    PLOT(F) plots the CHEBFUN object F.
% 
%    PLOT(F, S) allows various line types, plot symbols, and colors to be used
%    when S is a character string made from one element from any or all the
%    following 3 columns:
% 
%             b     blue          .     point              -     solid
%             g     green         o     circle             :     dotted
%             r     red           x     x-mark             -.    dashdot
%             c     cyan          +     plus               --    dashed
%             m     magenta       *     star             (none)  no line
%             y     yellow        s     square
%             k     black         d     diamond
%             w     white         v     triangle (down)
%                                 ^     triangle (up)
%                                 <     triangle (left)
%                                 >     triangle (right)
%                                 p     pentagram
%                                 h     hexagram
% 
%    The entries from the centre columns are plotted at the grid being used to
%    represent F (typically Chebyshev).
% 
%    The X,Y pairs, or X,Y,S triples, can be followed by parameter/value pairs to
%    specify additional properties of the lines. For example,
%             f = chebfun(@sin);
%             plot(f, 'LineWidth', 2, 'Color', [.6 0 0])
%    will create a plot with a dark red line width of 2 points.
% 
%    PLOT(F1, S1, F2, S2, F3, S3, ...) or PLOT(F1, G1, S1, F2, G2, S2, ...)
%    combines the plots defined by the (F,G,S) triples or (F,S) doubles, where
%    the F's and G's are CHEBFUN object and the S's are strings.
% 
%    [HLINE, HPOINT, HJUMP] = PLOT(F) returns column vectors of handles to
%    lineseries objects (one for each column in the case of array-valued CHEBFUN
%    objects), corresponding to the line, point, and jump plots, respectively.
% 
%    PLOT(F, 'interval', [A, B]) restricts the plot to the interval [A, B], which
%    can be useful when the domain of F is infinite, or for 'zooming in' on, say,
%    oscillatory CHEBFUN objects. If plotting an array-valued CHEBFUN or more
%    than one CHEBFUN in a call like PLOT(F, 'b', G, '--r', 'interval', [A, B])
%    this property is applied globally.
% 
%    Besides the usual parameters that control the specifications of lines (see
%    linespec), the parameter JumpLines determines the linestyle for
%    discontinuities of the CHEBFUN F. For example, PLOT(F, 'JumpLine', '-r')
%    will plot discontinuities as solid red lines. By default the plotting style
%    is ':', and colours are chosen to match the lines they correspond to. It is
%    possible to modify other properties of JumpLines syntax like PLOT(F,
%    'JumpLine', {'color', 'r', 'LineWidth', 5}). JumpLines can be suppressed
%    with the argument 'JumpLine','none'.
% 
%    Note that the PLOT(F, 'numpts', N) option for V4 is deprecated, and this
%    call now has no effect.
% 
%  See also PLOTDATA, PLOT3.
%