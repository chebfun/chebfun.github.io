%% CONSTRUCTOR :: CHEBFUN constructor.
%    FUNS = CONSTRUCTOR(OP, DOMAIN) constructs the piecewise components (known as
%    "FUNS") used by a CHEBFUN object to represent the function OP on the
%    interval DOMAIN. OP must be a function_handle, string, numerical vector, or
%    a cell array containing a combination of these first three data types. In
%    the later case, the number of elements in the array must be one less than
%    the length of the DOMAIN vector.
% 
%    If OP is a function_handle or a string, it should be vectorised in that it
%    accepts a column vector of length N and return a matrix of size N x M. If M
%    ~= 1, we say the resulting CHEBFUN is "array-valued".
% 
%    CONSTRUCTOR(OP, DOMAIN, PREF), where PREF is a CHEBFUNPREF object, allows
%    alternative construction preferences to be passed to the constructor. See
%    >> help chebfunpref for more details on preferences.
% 
%    In particular, if PREF.ENABLEBREAKPOINTDETECTION = TRUE and OP is a
%    function_handle or a string, then the constructor adaptively introduces
%    additional breakpoints into the domain so as to better represent the
%    function. These are returned as the second output argument in [FUNS, END] =
%    CONSTRUCTOR(OP, DOMAIN).
% 
%  See also CHEBFUN, CHEBFUNPREF.
% 
%  Copyright 2014 by The University of Oxford and The Chebfun Developers.
%  See http://www.chebfun.org/ for Chebfun information.
%