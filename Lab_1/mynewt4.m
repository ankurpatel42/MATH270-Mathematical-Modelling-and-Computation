function results = mynewt4(x, niter, tol)

% A simple function M-file using Newton's method
% to solve Chapra and Canale's exercise 6.4
% f(x) = (x).^3 - x - 0.385;
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
    f = (x).^3 - x - 0.385;
    dfdx = (3 * (x).^2) - 1;
    next_x = x - (f / dfdx);
    if (abs(next_x - x) / abs(next_x)) < tol
        break
    end
    x = next_x;
    results(k, :) = [k, next_x, f];
end

% mynewt4(1.154703225702873, 100, 1e-4) = no solution?
% mynewt4(-0.577014699417730, 1000, 1e-4) = 0.011547345966755
% mynewt4(-0.577727275968390 , 1000, 1e-4) = 0.001154804344906  (1.0e+02 *)

% Checkpoint 7

% There are 3 (2?) solutions to the one with 0.3849 in the function and 1 for
% the other one?
% The function evaluated x is approaching or becoming 0
