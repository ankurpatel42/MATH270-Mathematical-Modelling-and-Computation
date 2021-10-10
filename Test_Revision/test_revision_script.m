clc;
clear;
format default
set(0, 'DefaultFigureWindowStyle', 'docked');

%-------------------Fixed point iteration-------------------------
% x = linspace(-2, 7, 1000);
% y = exp(x) - 8*x.^2 + 1;
% plot(x,y);

% f = @(x) exp(x)-8*(x.^2)+1;
% tol = 0.0001;
% xn = 3;
% g = @(x) log(8*((x)^2)-1);
% for i = 1:1000
%     g = log(8*((x0)^2)-1); 
%     g = -1*sqrt((exp(x0)+1)/8);
%     xn_plus_one = g(xn);
%     if abs((xn_plus_one - (xn))) < tol
%         disp(xn_plus_one);
%         break;
%     end
%     xn = xn_plus_one;
% end
%----------------Systems of Equations (Newtons's method)-------------------
x = linspace(-2, 2, 1000);
y1 = x.^3 - 3*x - 1;
y2 = sin(2*x + (pi/2)-1);
plot(x, y1, x, y2);
J = @(x) [3*x(1)^2 - 3, -1; 2*cos(2*x(1)+(pi/2)), -1];
f = @(x) [x(1)^(3) - 3*x(1) - 1 - x(2); sin(2*x(1) + (pi/2))-1-x(2)];
x_0 = [2; 1];
% x_0 = [-0.2703; 0.0303];
%x_0 = [-1.7157; -0.2773];
tol = 0.0001;
for i = 1:1000
    change_in_x = J(x_0)\(-1*f(x_0));
    x_k_plus_one = change_in_x + x_0;
    disp(x_k_plus_one);
    if (norm(x_k_plus_one - x_0)/norm(x_0)) < tol
       break;
    end
    x_0 = x_k_plus_one;
end
%-----------------------Linear Approximation-------------------------------
% x = [10; 30; 40; 50];
% y = [703; 658; 547; 684];
% x0 = 20;
% hold on;
% scatter(x,y);
% xline(20);
% hold off;
% f_linear = @(x)(703 + (-9/4)*((x-10)));
% f_linear(20)
% f_cubic = @(x)(703 + (-9/4)*((x-10)) + (-7/24)*((x-10)*(x-30)) + (919/24000)*((x-10)*(x-30)*(x-40)));
% f_cubic(20)
%----------------------Differential Equations------------------------------
% [T,y] = euler(@myfunc, [0, 10], 105, 10/0.5);
% format long;
% ans_euler = y(length(y));
% [T2,y2] = ode23(@myfunc, [0, 10], 105, 10/0.5);
% ans_ode23 = y2(length(y2));
% %plot(T, y, '-r', T2, y2, '-b');
% length(T2);
% a = ode23(@myfunc, [0, 10], 105, 10/0.5);
% a.stats;


