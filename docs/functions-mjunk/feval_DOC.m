%% FEVAL :: Evaluate a CHEBFUN.
%    FEVAL(F, X) evaluates a CHEBFUN F at the points in X.  If F is a quasimatrix
%    with columns F1, ..., FN, then the result will be [F1(X), ..., FN(X)], the
%    horizontal concatenation of the results of evaluating each column at the
%    points in X.
% 
%    FEVAL(F, 'left'), FEVAL(F, 'start'), and FEVAL(F, '-') return the value of F
%    at the left endpoint of its domain.  FEVAL(F, 'right'), FEVAL(F, 'end'), and
%    FEVAL(F, '+') do the same for the right endpoint.
% 
%    FEVAL(F, X, 'left') and FEVAL(F, X, '-') evaluate F at the points in X,
%    using left-hand limits to evaluate F at any breakpoints. FEVAL(F, X,
%    'right') and FEVAL(F, X, '+') do the same but using right-hand limits.
% 
%    F(X), F('left'), F(X, 'left'), etc, are equivalent syntaxes. 
% 
%    Example:
%      f = chebfun(@(x) 1./(1 + 25*x.^2));
%      y = feval(f, linspace(-1, 1, 100).');
% 
%  See also SUBSREF.
%