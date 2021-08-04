function results =  mymultinewt(x, niter, tol)

% A simple function M-file using Newton's method

results = zeros(niter, 5);
for k = 1:niter
    f = [log(x(1)) - x(2); (1/25)*(x(1).^2 + 2 * x(1) - 24) - x(2)];
    J = [1/x(1), -1; (1/25)*(2*x(1) + 2), -1];
    %f = [x(1)^2 + x(2)^2 - 4; x(1)^2 - x(2) - 1];
    %J = [2*x(1), 2*x(2); 2*x(1), -1];
    deltax = J \ -f;
    next_x = x + deltax;
    if (norm(next_x - x, inf) / norm(next_x, inf)) < tol
        results(k, :) = [k, x(1), x(2), f(1), f(2)];
        break;
    end
    x = next_x;
    results(k, :) = [k, x(1), x(2), f(1), f(2)];
end

%format long