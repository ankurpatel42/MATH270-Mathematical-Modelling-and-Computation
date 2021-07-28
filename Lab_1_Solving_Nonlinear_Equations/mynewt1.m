x = 0;
results = zeros(10, 3);
for k = 1:10
    f = -1 + (5.5 * x) - 4 * (x.^2) + 0.5 * (x.^3);
    dfdx = (1.5 * x^2) - (8 * x) + 5.5;
    x = x - (f / dfdx);
    results(k, :) = [k, x, f];
end
disp(results)

% f(0) = -1
% f(1) = 1
% changes from negative to positive cuts x axis somwhere between these two
% numbers