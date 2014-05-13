%% NEWDOMAIN :: Change of domain of a CHEBFUN.
%   NEWDOMAIN(G, DOM) returns the CHEBFUN G but moved to the domain DOM. This is
%   done with a linear map. DOM may be a vector of length G.ends, or a two-vector
%   (in which case all breakpoints are scaled by the same amount).
%