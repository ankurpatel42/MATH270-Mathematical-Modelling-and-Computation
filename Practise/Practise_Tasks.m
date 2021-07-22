% Q1 (a)

x = 0:0.01:1;
length(x);

% Q1 (b)

x = -5:0.01:5;
length(x);

% Q1 (c)

x = linspace(0, 10, 1000);
length(x);

% Q1 (d)

x = linspace(0, 10, 101);
length(x);

% Q2 (a)

x = linspace(-1, 1, 101);
y = exp(x);
%plot(x, y);

% Q2 (b)

x = linspace(-1, 1, 101);
y = x;
%plot(x, y);

% Q2 (c)

x = linspace(0, 10, 101);
y = sqrt(x);
%plot(x, y);

% Q2 (d)

x = linspace(-2 * pi, 2 * pi, 101);
y = cos(x);
%plot(x, y);

% Q2 (e)

x = linspace(0, 20, 101);
y = log(x);
%plot(x, y);

% Q2 (f)

x = linspace(-5, 5, 101);
y = x.^2 - x - 2; % x.^2 element wise operation
%plot(x, y);

% Q2 (g)

x = linspace(-5, 5, 101);
y = 1./(x);
%plot(x, y);

% Q3 (a)

x = linspace(-5, 5, 101);
y = myfunc(x);
%plot(x, y);
%xlabel('x');
%ylabel('f(x)');

% Q3 (b)

x = linspace(-5, 5, 101);
y = myfunc1(x);
%plot(x, y);
%xlabel('x');
%ylabel('f(x)');

% Q3 (c)

x = linspace(-5, 5, 101);
y = myfunc2(x);
%plot(x, y);
%xlabel('x');
%ylabel('f(x)');

% Q3 (d)

x = linspace(-5, 5, 101);
y = myfunc3(x);
%plot(x, y);
%xlabel('x');
%ylabel('f(x)');

% Q3 (e)

x = linspace(-5, 5, 101);
y = myfunc4(x);
%plot(x, y);
%xlabel('x');
%ylabel('f(x)');

% Q3 (f)

x = linspace(-5, 5, 101);
y = myfunc5(x);
%plot(x, y);
%xlabel('x');
%ylabel('f(x)');

% Q3 (g)

x = linspace(-5, 5, 101);
z = linspace(-5, 5, 101);
y = myfunc6(x, z);
%plot(x, y);
%xlabel('x');
%ylabel('f(x)');

%we could calculate its derivatives at say x = 0 with the following command:
%function [dfdx, d2fdx2] = derivs(func, x, h)

%Note the ’@’ before the name of the function (myfunc) passed as an input to derivs. @myfunc is called a
%function handle and is used when we want to pass the name of a particular function, rather than its output(s).
%This function can then be called from within derivs in the usual way – this is done on the lines that calculate
%dfdx and d2fdx2.

[dfdx, dfdx2] = derivs(@myfunc4, 0, 0.000001);

%--------------------------------------------------------------------------
%colon operator t = 1:10 creates a vector of values between 1 and 10, in increments of 1, i.e. (1, 2, . . . , 10).
%To have them spaced in increments of 0.1, use t = 1:0.1:10. To have them count downwards from 10
%to 1, use x = 10:-1:1.
%linspace creates a vector of a specified number of equally spaced values in a certain range. For example, if you
%want 1000 values evenly spaced between 1 and 10, use t = linspace(1, 10, 1000).


t = linspace(0, 0, 5);
disp(t);
for I = 1:length(t)
    t(I) = 1;
end
disp(t);

for I = 1:length(t)
    t(I) = I;
end
disp(t);

for I = 1:length(t)
    t(I) = I * 2;
end
disp(t);

for I = 1:length(t)
    t(I) = I ^ 2;
end
disp(t);

value = 3;
for I = 1:length(t)
    t(I) = value;
    value = value - 2;
end
disp(t);

t = linspace(0, 0, 5);
value = 5;
for I = 1:length(t)
    if mod(I, 2) ~= 0
        t(I) = value;
        value = value + 3;
    end
end
disp(t)

t = linspace(0, 0, 5);
value = 3;
for I = 1:length(t)
    if mod(I, 2) == 0
        t(I) = -1 * value;
    else
        t(I) = value;
    end
    value = value * 2;
end
disp(t);

t = linspace(0, 0, 10);
for I = 2:length(t)
    t(I) = 2 * t(I-1) + 1;
end
disp(t);

t = linspace(1, 1, 5);
for I = 2:length(t)
    val = 3 * (t(I-1)).^2 - 1;
    t(I) = val;
end
disp(t);

t = linspace(1, 1, 5);
for I = 2:length(t)
    val = -3 * t(I-1);
    t(I) = val;
end
disp(t);

t = linspace(0, 0, 5);
t(1) = -2;
for I = 2:length(t)
    val = (t(I-1))^2 + t(I-1);
    t(I) = val;
end
disp(t);

t = linspace(0, 0, 5);
t(1) = 1;
t(2) = 1;
for I = 3:length(t)
    val = t(I - 2) + t(I - 1);
    t(I) = val;
end
disp(t);

t = linspace(0, 0, 5);
t(1) = 1;
t(2) = 2;
for I = 3:length(t)
    val = 2 * (t(I-2))^2 - t(I - 1) + (t(I - 2) * t(I - 1)) - 1;
    t(I) = val;
end
disp(t);

result = 0;
for I = 1:10
    result = result + I;
end
disp(result);

result = 0;
for I = 5:23
    result = result + (-1)^I * exp(-1 * I);
end
disp(result);

result = 0;
for I = 0:100
    result = result + I^-2;
end
disp(result);

result = 0;
for I = 1:100
    result = result + I^-2;
end
disp(result);

result = 0;
for I = -50:50
    result = cos(I);
end
disp(result);

result = 0;
for I = 1:200
    result = (-1)^I * (2^-I - I);
end
disp(result);

result = 0;
for I = 1:200
    if mod(I, 4) == 0
        result = result + -4 * I;
    else
        result = result + I;
    end
end
disp(result);


result = 0;
for I = -100:50
    if I < 0 && mod(2 * I, 3) == 0
        result = result + 2^I;
    elseif I < 0 && mod(2 * I, 3) ~= 0
        result = result + (-1)^I * I^2;
    elseif I >= 0
        result = result + sqrt(I);
    end
end
disp(result);

result = 0;
for I = 0:inf
    v = 4^(-1 * I);
    if abs(v) < 0.00001
        break;
    else
        result = result + v;
    end
end
disp(result);

result = 0;
for I = 1:inf
    v = (-1)^I * I^-1;
    if abs(v) < 0.00001
        break;
    else
        result = result + v;
    end
end
disp(result);

result = 0;
for I = 1:inf
    v = I^-3;
    if abs(v) < 0.00001
        break;
    else
        result = result + v;
    end
end
disp(result);

