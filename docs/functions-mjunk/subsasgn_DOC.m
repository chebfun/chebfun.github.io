%% SUBSASGN :: Chebfun SUBSASGN.
%  ( )
%    F(X) = VAL assigns the values VAL at locations specified by X to the 
%    CHEBFUN F. SIZE(X, 1) should be equal to LENGTH(VAL) and SIZE(X, 2) should 
%    be the number of columns in F. SUBSASGN introduces new breakpoints
%    in F at points in X that were not originally in F.DOMAIN. See DEFINEPOINT
%    for further details.
% 
%  .
%    CHEBFUN properties are restricted, so F.PROP = VAL has no effect.
% 
%  {}
%    F{A, B} = G redefines the CHEBFUN F in the interval [A, B] using G. See
%    CHEBFUN/DEFINEINTERVAL for further details.
% 
%  See also SUBSREF, DEFINEPOINT, DEFINEINTERVAL.
%