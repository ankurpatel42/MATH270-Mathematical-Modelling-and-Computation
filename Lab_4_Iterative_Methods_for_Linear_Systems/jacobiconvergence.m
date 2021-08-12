A = [4, 1, 1; 1, 2, 3; 2, -1, -3];
b = [5; 5; -3];
x0 = [0; 0; 0];
tol = 1e-6; % Convergence
niter = 100;
% tol = 1e-9; % No convergence
% niter = 100;
[results, converge_flag] = jacobi(A, b, x0, niter, tol);
[m, n] = size(results);


if converge_flag == 1
    fprintf('Converged to x = (%.4f, %.4f, %.4f) in %d iterations\n', results(end, 2:4), m);
else
    fprintf('Failed to converge. Number of iterations carried out = %d\n', m);
end
