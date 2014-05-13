%% MERGE :: Remove unnecessary breakpoints in from a CHEBFUN.
%    F = MERGE(F, PREF) removes unnecessary breakpoints from a CHEBFUN F. In
%    particular the kth breakpoint is removed if the resulting FUN on the
%    interval [x_{k-1}, x_{k+1}] can be represented with a fewer than
%    PREF.MAXLENGTH points when PREF.ENABLEBREAKPOINTDETECTION = 0 and
%    PREF.BREAKPOINTPREFS.SPLITMAXLENGTH points when
%    PREF.ENABLEBREAKPOINTDETECTION = 1. If a PREF is not passed, then the
%    default CHEBFUN.PREF() is used.
% 
%    [F, MERGEDPTS] = MERGE(F) returns the index of the merged endpoints in the
%    vector MERGEDPTS.
% 
%    MERGE(F, INDEX) attempts to eliminate the endpoints specified in INDEX.
%    MERGE(F, 'all') is equivalent to MERGE(F, [2:length(F.domain)-1]). (Note
%    that it doesn't make sense to consider merging the first and final
%    breakpoints.)
% 
%    In all cases, elimination is attempted from left to right, and non-trivial
%    pointValues will prevent merging at the corresponding breakpoints.
% 
%    Example:
%        f = chebfun(@(x) abs(x), 'splitting','on');
%        [g, mergedPts] = merge(f.^2);
% 
%  See also CHEBFUNPREF.
%