%------------------Multidimensional Newton’s method------------------------
%log = ln, log10 = log base 10
% mymultinewt([4; 0], 20, 1e-4)
% mymultinewt([0.25; -1], 20, 1e-4)

%-------------------Errors when solving linear systems---------------------
% A = [4, 3; 3, 2];
% x = [1; 2];
% b = A * x;
% x1 = A\b;
% absolute_error = norm(x - x1, inf);
% relative_error = norm(x - x1, inf) / norm(x, inf);
% 
% b1 = A * x1;
% absolute_residual = norm(b - b1, inf);
% relative_residual = norm(b - b1, inf) / norm(b, inf);
A = [4, 3; 3, 2];
x = [1; 2];
[relative_error, relative_residual] = myerrors(A, x);

%-------------------------Hillbert Matrices--------------------------------
A = hilb(5);
x = transpose(ones(1, 5));
b = A * x;

[relative_error, relative_residual] = myerrors(A, x);
condition_number = cond(A,inf);

results = myerrors2;
%fprintf('%3d %12.3e %12.3e %12.3e\n', results')

%--------------------------Checkpoint 2------------------------------------

% What is the first value of n for which the calculated solution is no longer accurate to 4 significant figures?

% Are the residual vectors a good guide to the accuracy of the calculated solution?

% How large does n have to be before MATLAB warns you that the solutions may be inaccurate?

% When n = 12, MATLAB gave a warning saying matrix is close to singular or
% badly scaled, result may be inaccurate

% Is the condition number a good guide to the accuracy of the calculated solution?

%----------------Numerical approximation of the Jacobian-------------------
% Checkpoint 3
x = [1.5; 3.5; 2.5];
x1 = mymultinewt2(x, 10, 1e-4);

