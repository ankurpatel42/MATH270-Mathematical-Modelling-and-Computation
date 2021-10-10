clear;
clc;
I1 = @(x)(x);
I2 = @(x)(x^2);
I3 = @(x)(x^3);
I4 = @(x)(x^4);
functions = {I1, I2, I3, I4};
a = 0;
b = 1;
n = 1;

% int_trap = trap(I4, a, b)
% int_comp_trap = comp_trap(I4, a, b, n)
% int_simp = simp(I4, a, b)
int_comp_simp = comp_simp(I4, a, b, n)

% Simp: rectangles are 2h wide, even no. of rectangles (even no. of steps
% or odd n + 1 points) depending on how you want to define it (steps or
% points) e.g. if n = 8, then there is n + 1 = 8 + 1 = 9 points and 8
% steps.


