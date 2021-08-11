A = [4, 1, 1; 1, 2, 3; 2, -1, -3];
% A = [4, -2, 1; 3, -6, 1; -4, 1, 6];
% A = [1, -2, 1; 3, 1, 1; -4, 1, 1]; Did not converge, diagonal values in
% column is NOT.... and the matrix norm || M || p is not < 1
b = [5; 5; -3];
x0 = [0; 0; 0];
% Convergence, converged in less iterations than jacobi
tol = 1e-6; 
niter = 100;

% No Convergence, greater accurracy than jacobi, much more tolerant (with
% more iterations as input as well)
% tol = 1e-400; 
% niter = 1000;
[results, converge_flag] = guassseidel(A, b, x0, niter, tol);

[m, n] = size(results);
for i = 1:m
    if results(i) == 0
        iter = results(i-1);
        break
    else
        iter = m;
    end
end

if converge_flag == 1
    fprintf('Converged to x = (%.4f, %.4f, %.4f) in %d iterations\n', results(iter,2), results(iter, 3), results(iter, 4), iter);
else
    fprintf('Failed to converge. Number of iterations carried out = %d\n', iter);
end