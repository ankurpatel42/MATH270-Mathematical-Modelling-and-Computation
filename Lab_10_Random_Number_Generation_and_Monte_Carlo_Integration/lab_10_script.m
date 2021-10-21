k = 2;
lambda = 1;
n = 1000;
a = 0;
b = 10;
x = linspace(a, b, n);
f = ((lambda/factorial(k - 1)).*(x).^(k-1)) .* exp(-1*lambda.*x);
p = max(f);
m = p/b;
g = a + (b-a).*rand(n, 1);
u = a + ((m*b)-a).*rand(n, 1);
observations = zeros(1, n);
accepted = zeros(1, n);
%o = x.*exp(-1.*x);
hold on;
yline(m*b);
plot(x, f);
%plot(x, o);
for i = 1:1000
    x_star = g(i);
    u_star = u(i);
    f = @(x)((lambda/factorial(k - 1)).*(x).^(k-1)) .* exp(-1*lambda.*x);
    if u_star <= f(x_star)
       plot(x_star, u_star, 'b.');
        accepted(i) = x_star;
    else
        plot(x_star, u_star, 'r.')
    end
    observations(i) = x_star;
end
accepted_x_stars = nonzeros(accepted);
disp(length(accepted_x_stars));
histogram(accepted_x_stars, 'Normalization', 'pdf');
hold off;

sample_mean = mean(observations);
sample_variance = var(observations);
median_X = median(sample_mean);
% 
% n = 5000;
% a = 0;
% b = median_X;
% new_samples = sort(a + (b-a).*rand(n, 1));
% x = linspace(a, b, n);
% f = @(x)((lambda/factorial(k - 1)).*(x).^(k-1)) .* exp(-1*lambda.*x);
% result = 0;
% for i = 1:n
%     result = result + f(new_samples(i));
% end
% result = ((b - a)/(n)) * result;
