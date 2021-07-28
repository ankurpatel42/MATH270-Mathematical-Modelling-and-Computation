x = 0.5;
y = 0;
while x ~= y
    y = x;
    x = 2 * sin(sqrt(x));
end
% Checkpoint 1: 1.9724

x = 0:0.01:4;
y = 2 * sin(sqrt(x));
plot(x, x, 'b--', x, y, 'r-');
title('Plot for fixed point iterations.');

% Checkpoint 2: It will converge to 1.9724

x = 0.01;
for I = 1:7
    x = 2 * sin(sqrt(x));
    disp(x)
end

% Checkpoint 3 - It doesn't converge to 1.9724, not enough iterations
% performed.
