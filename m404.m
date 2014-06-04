

LW = 'linewidth';
figure('position', [0 0 700 80], 'color', 'w')
str = '404 NOT FOUND';
msg = scribble(str);
% plot(msg, '-', 'color', [.3 .3 .3], LW, 2), hold on
% plot(msg, '-', 'color', [.1 .1 .1], LW, 1)
plot(msg, '-k', 'color', [0 0 0])
axis off
