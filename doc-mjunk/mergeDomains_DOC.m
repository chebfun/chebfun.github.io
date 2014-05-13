%% MERGEDOMAINS ::  :: Merge breakpoints (with a tolerance).
%    MERGEDOMAINS(DOM1, DOM2, ..., DOMN, TOL) merges the breakpoints of the
%    domains DOM1, ..., DOMN to a tolerance TOL, where DOM1, ..., DOMN are sorted
%    vectors of real numbers. If the domains are not compatible, i.e.. the first
%    and final entry of each DOM differ by more than TOL, then an error is
%    returned.
% 
%    MERGEDOMAINS(DOM1, DOM2, ..., DOMN) uses a tolerance of the largest
%    magnitude entry in DOM1, ..., DOMN scaled by 10*eps.
% 
%  See also WHICHDOMAIN, TWEAKDOMAIN, DOMAINCHECK.
%