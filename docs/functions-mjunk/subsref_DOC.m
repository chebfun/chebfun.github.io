%% SUBSREF :: CHEBFUN subsref.
%  ( )
%    F(X) returns the values of the CHEBFUN F evaluated on the array X. If X
%    falls on a breakpoint of F, the corresponding value from F.IMPULSES is
%    returned. F(X, 'left') or F(X, 'right') will evaluate F at breakpoints
%    using left- or right-hand limits, respectively. See CHEBFUN/FEVAL for
%    further details. F(:) returns F.
% 
%    If F is an array-valued CHEBFUN then F(X, COL) returns the values of the
%    columns specified by the vector COL at the points X. Similarly, F(:, COL)
%    returns a new array-vlaued CHEBFUN containing only the columns specified in
%    COL. In both cases, COL should be a row vector.
% 
%    F(G), where G is also a CHEBFUN, computes the composition of F and G. See
%    CHEBFUN/COMPOSE for further details.
% 
%  .
%    F.PROP returns the property PROP of F as defined by GET(F, 'PROP').
% 
%  {}
%    F{S1, S2} restricts F to the domain [S1, S2] < [F.ENDS(1), F.ENDS(end)]. See
%    CHEBFUN/RESTRICT for further details. Note that F{[S1, S2]} is not supported
%    due to the behaviour of the MATLAB subsref() command.
% 
%  See also FEVAL, COMPOSE, GET, RESTRICT.
%