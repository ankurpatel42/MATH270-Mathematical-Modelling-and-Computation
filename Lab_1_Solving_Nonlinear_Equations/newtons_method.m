x = 0:0.01:10;
y = -1 + (5.5 * x) - 4 * (x.^2) + 0.5 * (x.^3);
plot(x, y);
title('Newtons.');

% approximations : x = 1, x= 1.2, x = 6.2
