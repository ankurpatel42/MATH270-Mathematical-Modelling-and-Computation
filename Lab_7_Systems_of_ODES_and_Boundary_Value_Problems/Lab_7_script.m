clc;
clear;
h = 0.001;
t_max = 5;
t_min = 0;
y0 = [pi/3, 0];
n = t_max / h;
t_span = [t_min, t_max];
[T1, y1] = euler(@f, t_span, y0, n);
[T2, y2] = heun(@f, t_span, y0, n);
[T3, y3] = ode23(@f, t_span, y0, n);
% the y solutions is a matrix of two columns, first col is y1 solutions and
% second solution is y2
%plot(T1, y1(:,1), '-r', T2, y2(:,1), 'g', T3, y3(:,1), 'b');
%[T4, y4] = ode23(@animatePendulum, linspace(0, h, 5), y0, n);
A = tridiagonal(1, 10);
%disp(A);
[x, T] = rod(100);
plot(T,x);