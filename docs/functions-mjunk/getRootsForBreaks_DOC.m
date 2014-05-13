%% GETROOTSFORBREAKS :: Get roots of a CHEBFUN and polish for use as breakpoints.
%    GETROOTSFORBREKAS(F) computes the roots of F (more specifically, ROOTS(F,
%    'nozerofun', 'nojump', 'noimps')) and then eliminates ones which are too
%    close together to be introduced into F (or into some other CHEBFUN with the
%    same domain as F) as breakpoints.  The roots are returned in a form
%    suitable for passing to ADDBREAKS().
% 
%    GETROOTSFORBREAKS(F, TOL) provides a lower bound for the tolerance used in
%    deciding if two roots are too close.
% 
%    [RBREAKS, RALL] = GETROOTSFORBREAKS(...) returns both the roots RBREAKS
%    deemed suitable for use as breakpoints and all of the roots computed by the
%    call to ROOTS.
% 
%  See also ROOTS, ADDBREAKS, ADDBREAKSATROOTS.
%