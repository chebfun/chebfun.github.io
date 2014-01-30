%% ADDBREAKS :: Add breakpoints to the domain of a CHEBFUN
%    ADDBREAKS(F, BREAKS) attempts to insert breakpoints in F at the points in
%    the vector BREAKS.  BREAKS need not be sorted or have only unique values,
%    but it should consist only of points in the domain of F.  Breakpoints will
%    not be inserted if they are too close together or too close to existing
%    breakpoints.
% 
%    ADDBREAKS(F, BREAKS, TOL) does the same but uses the tolerance TOL as a
%    lower bound for the tolerance used in deciding if breakpoints are too close
%    to each other or to existing ones to qualify for insertion.
% 
%  See also ADDBREAKSATROOTS.
%