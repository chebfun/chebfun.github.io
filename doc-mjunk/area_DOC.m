%% AREA :: Filled CHEBFUN area plot.
%    AREA(X, F) or AREA(F) is the same as PLOT(X, F) or PLOT(F) except that the
%    area between 0 and F is filled. When F is array-valued, AREA(F) plots the
%    columns of Y as filled areas.
% 
%    AREA(F, LEVEL) specifies the base level for the area plot to be at the value
%    y = LEVEL. The default value is LEVEL = 0.
% 
%    AREA(..., 'Prop1', VALUE1, 'Prop2', VALUE2,...) sets the specified
%    properties of the underlying areaseries objects.
%  
%    AREA(AX, ...) plots into axes with handle AX. Use GCA to get the handle to
%    the current axes or to create one if none exist.
%  
%    H = AREA(...) returns a vector of handles to areaseries objects.
%    
%  See also PLOT.
%