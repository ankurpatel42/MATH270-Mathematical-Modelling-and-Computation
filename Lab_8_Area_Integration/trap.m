function int = trap(f, a, b)
%Simple trapezium rule
% Uses the simple trapezium rule to evaluate the integral of a function f over a finite interval.
% 
% f	integrand function
% a, b  interval with a < b
% int   approximation of the integral
% 
% Example of use:
% f = @(x) x.^2;
% trap(f, 0, 1)

% 
int = ((b-a))*(f(a) + f(b))/2;