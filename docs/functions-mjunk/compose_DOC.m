%% COMPOSE  Composition of CHEBFUN objects.
%    COMPOSE(F, OP) returns a CHEBFUN representing OP(F), where F is also a
%    CHEBFUN object and OP is a function handle.
% 
%    COMPOSE(F, OP, G) returns OP(F, G), where F and G are CHEBFUN objects and OP
%    is a function handle. The domains and dimensions of F and G should be
%    compatible.
% 
%    COMPOSE(F, G) returns a CHEBFUN representing G(F), where both F and G are
%    also CHEBFUN objects. If the range of F is not contained in the domain of G,
%    or if F and G do not have the same dimensions, then an error is thrown.
% 
%    COMPOSE(F, OP, PREF), COMPOSE(F, OP, G, PREF), and COMPOSE(F, G, PREF) use
%    the options passed by the CHEBFUNPREF object PREF.
% 
%    Note: If the locations of required breakpoints in the output are known in
%    advance, they should be applied to F and/or G using RESTRICT() before the
%    call to COMPOSE().
%