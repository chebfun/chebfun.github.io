%% PLOTDATA :: Useful data values for plotting a CHEBFUN object.
%    OUT = PLOTDATA(F) returns a struct containing data that can be used for
%    plotting F. In particular, DATA.xLine and DATA.yLine are for plotting smooth
%    curves (usually passed to plot with '-'), DATA.xPoints and DATA.yPoints
%    contain the (x, F(x)) data used to represent F, and DATA.xJumps and
%    DATA.yJumps are the linear connections between discontinuous pieces.
% 
%    OUT = PLOTDATA(F, G) is similar, but for plots of the form PLOT(F, G). (Note
%    that F and G are assumed to be real-valued CHEBFUN objects). Here OUT.xLine,
%    OUT.xPoints, and OUT.xJumps contain the data relating to F, and OUT.yLine,
%    OUT.yPoints, OUT.yJumps the data relating to G.
% 
%    OUT(F, G, H) returns data for plots of the form PLOT3(F, G, H), where F, G,
%    and H are real-valued CHEBFUN objects. In this case, the OUT also contains
%    the fields zLine, zPoints, and zJumps, which contain the plotting data
%    relating to H
% 
%  See also PLOT, PLOT3.
%