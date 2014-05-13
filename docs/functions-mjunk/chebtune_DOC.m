%% CHEBTUNE :: CHEBFUN melody player.
%    CHEBTUNE(F) plays melodies with varying pitch corresponding to the real part
%    of the function values of each CHEBFUN in F. The function value 0 is
%    associated with the tone c'' and the integers below and above correspond to
%    the semi-tones. The melodies are separated in the stereo panorama.
% 
%    CHEBTUNE(F, D) plays the melody for D seconds. The default value is D = 2.
% 
%  Example: CHEBPOLY-phony
%       f = 7*chebpoly(0:2) - 7;
%       f = [f , f + .2];  % add some chorus
%       chebtune(f, 3);
% 
%  Example: Police car
%       x = chebfun('x');
%       chebtune([9 + 6*sin(46*x), 7 + 10*sin(4*x)], 5);
% 
%  Example: Can you hear the shape of a CHEBFUN?
%       f = chebfun(12*rand(6, 1) - 6);
%       chebtune(f, 6);
%       plot(f);
% 
%  See also SOUND, SING.
%