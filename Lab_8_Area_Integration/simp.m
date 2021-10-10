function int = simp(f, a, b)
%Simple Simpson's rule
% Uses the simple Simpson's rule to evaluate the integral of a function f over a finite interval.
% 
% f	integrand function
% a, b  interval with a < b
% int   approximation of the integral
% 
% Example of use:
% f = @(x) x.^2;
% simp(f, 0, 1)

int = ((b-a))*(f(a) + 4*f((a+b)/2) + f(b))/6;