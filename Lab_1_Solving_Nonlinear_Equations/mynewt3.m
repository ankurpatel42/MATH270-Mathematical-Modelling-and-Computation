function results = mynewt3(x, niter, tol)

% A simple function M-file using Newton's method
% to solve Chapra and Canale's exercise 6.4
% f(x) = (x).^3 - x - 0.3849;
%
% Usage: results = mynewt2(x, niter)
%
% Input/output variables:
% x = initial approximation to solution
% niter = number of iterations to be performed
% tol = desired tolerance, used to compare against successive
% approximations, if they are below tol then iteration stops
% results = output matrix, k-th row records:
% - number of iteration k,
% - k-th approximation x,
% - value of f at latest approximation.

results = zeros(niter, 3);
for k = 1:niter
    f = (x).^3 - x - 0.3849;
    dfdx = (3 * (x).^2) - 1;
    next_x = x - (f / dfdx);
    if (abs(next_x - x) / abs(next_x)) < tol
        break
    end
    x = next_x;
    results(k, :) = [k, next_x, f];
end

% mynewt3(1, 10, 1e-4) = 1.154703225702873
% mynewt3(0, 20, 1e-4) = -0.577014699417730
% mynewt3(-1, 20, 1e-4) = -0.577727275968390 
