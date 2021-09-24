function [x, T] = rod(n)
% INPUTS: n = number of steps to use between x=0 and x=L
% OUTPUTS: x = column vector of x-values along interval 0 to L
% T = column vector of temperature values at x values
L = 10;
Ta = 1;
a = 200;
b = 40;
c = 2;
h = L / n;
[A, x_vec] = modifiedtridiagonal(h, n, a, b, c, Ta);
x = A\x_vec;
x
T = linspace(0, L, n+1)';
end