function results =  mymultinewt(x, niter, tol)

% A simple function M-file using Newton's method
% to solve Chapra and Canale's exercise 6.4
% f(x) = -1 +5.5x-4xˆ2+0.5xˆ3 = 0
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
    f = x.^3-x-0.3849;
 
    dfdx = 3 * x.^2 - 1;
    next_x = x - (f / dfdx);
    if (abs(next_x - x) / abs(next_x)) < tol
        results(k, :) = [k, next_x, f];
        break;
    end
    x = next_x;
    results(k, :) = [k, next_x, f];
end

%format long
% help mynewt2.m