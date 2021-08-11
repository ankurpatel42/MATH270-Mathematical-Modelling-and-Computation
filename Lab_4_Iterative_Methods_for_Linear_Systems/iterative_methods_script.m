% Solving 3x3 systems lab

A = [4, 1, 1; 1, 2, 3; 2, -1, -3];
b = [5; 5; -3];
x0 = [0; 0; 0];
tol = 1e-6;
niter = 100;
[results, ~] = jacobi(A, b, x0, niter, tol);
[result2, ~] = guassseidel(A, b, x0, niter, tol);
%x = A\b