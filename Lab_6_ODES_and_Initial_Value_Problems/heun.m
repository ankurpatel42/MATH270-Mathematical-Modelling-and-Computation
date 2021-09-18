function [t, y] = heun(dydt, tSpan, y0, n)
%Solves a single ordinary differential equation by Heun's method.
%   Initial Value problem
%       dy/dt = f(t, y),    y(t0) = y0
%   Usage: [t, y] = euler(dydt, tSpan, y0, n)
%
%   Input argument list
%       dydt  -- function handle for the function calculating f(t, y)
%       tSpan -- is a row vector [t0 tn] where t0 is initial t value and tn
%                is the final t value
%       y0    -- y(t0) the initial y value
%       n     -- total number of steps
%   Output argument list
%       t     -- row vector of values of independent variable
%       y     -- row vector of values of solution y at the t values
%

% set up a row vector of values for t
t = linspace(tSpan(1), tSpan(2), n+1);

% initialise y for efficiency, and set y(1) = y0
y = zeros(size(t));
y(1) = y0;

% step size
h = (tSpan(2) - tSpan(1))/n;

% loop for the ode solver
for i = 1:n
   % auxiliary slope
   k1 = dydt(t(i), y(i));
   k2 = dydt(t(i) + h, y(i) + h * k1);
   % approximation of next function value
   y(i+1) = y(i) + h*((1/2)*k1 + (1/2)*k2);
end