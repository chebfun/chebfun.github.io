%% GETVALUESATBREAKPOINTS :: Determine values between neighbouring FUN objects.
%    VALS = GETVALUESATBREAKPOINTS(FUNS, ENDS, OP) returns the values at
%    breakpoints ENDS between FUN objects. If OP can be evaluated at ENDS then
%    VALS = OP(ENDS). Otherwise VALS(j) is the average of the right and left
%    limits of its neighbouring funs for interior breaks and the limits from the
%    left and right for the VALS(1) and VALS(end), respectively.
%