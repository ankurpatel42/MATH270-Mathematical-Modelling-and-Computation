x = 0.5;
for I = 1:10
    x = asin((x/2))^2;
    disp(x)
end

x = -1:0.01:1;
y = asin((x/2)).^2;
plot(x, x, 'b--', x, y, 'r-');
title('Plot for fixed point iterations.');

% Checkpoint 4

% Solutions, x = 0 and x = 1.9724
% Substitute back into the equation g(x)
% Because they have different gradients?

