clc;
clear;
set(0, 'DefaultFigureWindowStyle', 'docked');
x = linspace(-2, 7, 1000);
% y = (exp(x) - 8*(x).^2 + 1);
% f = @(x)(exp(x) - 8*(x).^2 + 1);
% plot(x, y)
% 
% g_dash = @(x)((16*x)/((8*x.^2)-1));
% 
% x0 = 0.5;
% tol = 0.0001;
% for i = 1:1000
%     g = @(x)(log(8*x^(2)-1));
%     g = @(x) sqrt((-1*exp(x)-1)/(-8));
%     g = @(x) -1*(sqrt((-1*exp(x)-1)/(-8)));
%     x1 = g(x0);
%     if abs(x1 - x0) < tol
%         x1
%         break;
%     end
%     x0 = x1;
% end

x = linspace(-2, 2, 1000); % may need to change interval
y1 = (x.^3 - 3*x - 1);
y2 = sin(2*x + (pi/2) - 1);
plot(x, y1, x, y2);
J = @(x) [3*x(1).^2 - 3, -1; 2*cos(2*x(1)+(pi/2)), -1];
f = @(x)[x(1).^3-3*x(1)-1- x(2); sin(2.*x(1)+(pi/2))-1-x(2)];


% J = @(x) [3*x(1)^2 - 3, -1; 2*cos(2*x(1)+(pi/2)), -1];
% f = @(x) [x(1)^(3) - 3*x(1) - 1 - x(2); sin(2*x(1) + (pi/2))-1-x(2)];
x0 = [-2; 0];
tol = 0.0001;
for i = 1:1000
    change_in_x = J(x0) \ (-1 * f(x0));
    x_k_plus_one = change_in_x + x0;
    if (norm(x_k_plus_one - x0) / norm(x0)) < tol
        disp(x_k_plus_one)
        break
    end
    x0 = x_k_plus_one;
end
