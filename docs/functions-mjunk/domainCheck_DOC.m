%% DOMAINCHECK :: True if the domains of two CHEBFUN objects are the same.
%    DOMAINCHECK(F, G) returns TRUE if the endpoints of the domains of the two
%    CHEBFUN objects F and G coincide up to a tolerance depending on their
%    horizontal scales or if both F and G are empty CHEBFUN objects.
% 
%    Alternatively, one of F or G may be a two-vector, in which case its values
%    are treated as if they were F.domain([1, end]) or G.domain([1, end]),
%    respectively.
% 
%  See also HSCALE.
%