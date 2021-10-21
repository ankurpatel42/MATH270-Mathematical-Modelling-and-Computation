k = 2;
lambda = 1;
n = 1000;
a = 0;
b = 10;
t = linspace(a, b, n);
f = @(x)((lambda/factorial(k - 1)).*(x).^(k-1)) .* exp(-1*lambda.*x);


accepted = zeros(1, n);
j = 1;
for i = 1:100000
    x = 10*rand(1, 1);
    y = max(f(t))*rand(1, 1);
    if y <= f(x)
        accepted(j) = x;
        j = j + 1;
    end
    if j == 1000
        break
    end
end
hold on;
histogram(accepted, 'Normalization', 'pdf');
plot(t, f(t));
hold off;

median_X = median(accepted);
var_X = var(accepted);

n = 5000;
b = median_X;
accepted = zeros(1, n);
j = 1;
for i = 1:100000
    x = b*rand(1, 1);
    y = max(f(t))*rand(1, 1);
    if y <= f(x)
        accepted(j) = x;
        j = j + 1;
    end
    if j == 5000
        break
    end
end

n / i * (b * max(f(t)))

% result = 0;
% for i = 1:n
%     result = result + f(accepted(i));
% end
% result = (b/n) * result
    

