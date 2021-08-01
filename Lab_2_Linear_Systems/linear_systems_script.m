A = [2, 4, -1; 2, 2, 8; 1, 1, 9];
b = [-2, 1, 0];
[M, N] = size(A); % Number of rows of matrix A in the variable M and number of columns in N

%-------------------------------Notes--------------------------------------

% ctrl-r to comment, ctrl-t to uncooment

% A(:, 4) = b;

% A(1:5, 1) contains elements in rows 1-5 of the 1st column of A
% disp(A(2:2, 1:3)); contains elements in row 2 across columns 1 to 3

% A(2:2, 1:4) = A(2:2, 1:4) - A(1:1, 1:4);
% b = A(:,4);
%--------------------------------------------------------------------------

%              rowop(A, b, i, j, r)
[A, b] = rowop(A, b, 2, 1, -1);
r = ((A(3,1)) / (A(1,1)));
[A, b] = rowop(A, b, 3, 1, r);
r = ((A(3,2)) / (A(2,2)));
[A, b] = rowop(A, b, 3, 2, r);

% disp(A);
% disp(b);
%-------------------------Checkpoint 1-------------------------------------
A = rand(3);
b = ones(3, 1);

x = guass3(A, b);
%disp(x);

check_ax = A * x; % Check Ax = b
%disp(check_ax);

%--------------------------Checkpoint 2------------------------------------

% A = [2, 2, -1; 2, 2, 8; 1, -1, 9];
% b = ones(3, 1);
% 
% x = guass3(A, b);
% disp(x);

% Get NaN values, at some stage in the procedure the matrix contained some
% zero values and r = (Aij / Ajj) * -1 ended up being undefined as Ajj
% became 0 (division by zero), there was a zero pivot.

A = [0, 1, 2; 1, -1, 8; -4, -1, 3];
%A = [2, 2, -1; 2, 2, 8; 1, -1, 9];
b = ones(3, 1);

x = guass3modified(A, b);
%disp(x);

check = A * x;
%disp(check);
%-------------------------Checkpoint 3-------------------------------------
n = 10;
A = rand(n);
b = ones(n, 1);

x = guassn(A, b);
%disp(x);

check_result = A * x.'; % transpose vector
%disp(check_result);

