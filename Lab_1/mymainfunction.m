function results = mymainfunction(x, niter, tol, h)

results = zeros(niter, 3);
for k = 1:niter
    f = myfunc(x);
    dfdx = (myfunc(x + h) - f) / h;
    next_x = x - (f / dfdx);
    if (abs(next_x - x) / abs(next_x)) < tol
        break
    end
    x = next_x;
    results(k, :) = [k, next_x, f];
end

% mymainfunction(1, 15000, 1e-4, 0.0001) = 0.000000000001000