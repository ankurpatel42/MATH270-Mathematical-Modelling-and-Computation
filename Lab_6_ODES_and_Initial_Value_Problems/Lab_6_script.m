clc
%Q1 (a)
f = @(t, y) (t.^2.*y - 1.1*y);
f(1, 1);

%Q1(b)
g(1, 1);

%Q2(a)
%general solution is y = e^((1/3)t^(3) - 1.1*t + C1), with initial
%conditions C1 = 0

%Q2(b)
initial_condition = 1;

t_min = 0;
t_max = 2;
t_span = [min_t, t_max];

h = 0.5;
n = t_max / h; %num steps
[t1, y1] = euler(@g, t_span, initial_condition, n); % h = 0.5

h = 0.25;
n = t_max / h; %num steps
[t2, y2] = euler(@g, t_span, initial_condition, n); % h = 0.25S

h = 0.01;
t = linspace(0, 2, t_max / h);
exact = exp(((t.^3)/3) - 1.1*t);

%plot(t, exact, t1, y1, '--', t2, y2, ':');

% Checkpoint 1: The error in the numerical approximation reduces as you
% reduce the step size (WHY?: 

%Q3
h = 0.5;
n = t_max / h; %num steps
[t3, y3] = heun(@g, t_span, initial_condition, n);

h = 0.25;
n = t_max / h; %num steps
[t4, y4] = heun(@g, t_span, initial_condition, n);

%plot(t, exact, t3, y3, '--', t4, y4, ':');

% Checkpoint 2: The error in the numerical approximation reduces as you
% increase the step size (WHY?: ), and compared to Euler's method the
% approximate solutions are closer to the true solution. So it's more
% accurate comapred to Euler's method.

%Q4
h = 0.5;
initial_condition = 700;
t_min = 0;
t_max = 10;
t_span = [t_min, t_max];
n = t_max / h;
[T1, t1] = heun(@chem, t_span, initial_condition, n);
[T2, t2] = ode23(@chem, t_span, initial_condition);
plot(T2, t2, 'o-', T1, t1);

% Checkpoint 3
% It does not fit well until the end, to get a better fit reduce the step
% size
% Rapid increase between 2.5 and 4.2 seconds, then plateaus out to a value
% of approximately 27150 K's.

