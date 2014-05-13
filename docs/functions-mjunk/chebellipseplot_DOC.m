%% CHEBELLIPSEPLOT :: Plot the Bernstein (aka Chebyshev) ellipses.
%    CHEBELLIPSEPLOT(U) plots Bernstein ellipses in the complex plane for each
%    piecewise part of U, with foci at points in U.domain and semi-minor and
%    major axes summing to rho(k) = C*exp(abs(log(EPS))/N(k)), where C is the
%    appropriate scaling for the interval [U.ends(k) U.ends(k+1)] and EPS is the
%    EPSLEVEL of U.
% 
%    CHEBELLIPSEPLOT(U, EPS) allows a user-specified EPS.
% 
%    CHEBELLIPSEPLOT(U, K) and CHEBELLIPSEPLOT(U, EPS, K) plot ellipses for
%    the funs of U indexed by the vector K. If U is a quasimatrix, only
%    the first column/row is considered.
% 
%    CHEBELLIPSEPLOT(U, ..., S) allows plotting options to be passed. For
%    example, for black lines one may write CHEBELLIPSEPLOT(U, 'k-').
% 
%    CHEBELLIPSEPLOT(U, ..., 'legends', 0) prevents the legends being
%    displayed on the plot.
% 
%    CHEBELLIPSEPLOT(U, ..., 'numpts', N) plots each ellipse using N points.
% 
%    H = CHEBELLIPSEPLOT(U) returns a handle H to the figure.
% 
%    Example:
%        u = chebfun({@sin, @cos, @tan, @cot}, [-2, -1, 0, 1, 2]);
%        chebellipseplot(u, sqrt(eps), '--');
%