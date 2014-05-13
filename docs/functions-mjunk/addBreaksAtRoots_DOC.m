%% ADDBREAKSATROOTS :: Add breaks at appropriate roots of a CHEBFUN
%    ADDBREAKSATROOTS(F) introduces breakpoints at certain roots in the interior
%    of the domain of a CHEBFUN F. In particular, breaks are introduced at each
%    of the roots returned by ROOTS(F, 'nozerofun', 'nojump', 'noimps'), except
%    those which are deemed too close together or too close to existing
%    breakpoints.
% 
%    ADDBREAKSATROOTS(F, TOL) provides a lower bound for the tolerance used in
%    the above exceptions.
% 
%    If F is array-valued, breaks will be introduced in each of the columns at
%    unique(ROOTS(F)).
% 
%  See also ADDBREAKS, ROOTS, GETROOTSFORBREAKS, DEFINEPOINT.
%