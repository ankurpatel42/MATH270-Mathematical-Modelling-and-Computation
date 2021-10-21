k = 2;
lambda = 1;
n = 1000;
a = 0;
b = 10;
x = linspace(a, b, n);
f = ((lambda/factorial(k - 1)).*(x).^(k-1)) .* exp(-1*lambda.*x);
p = max(f);
m = p/b;
observations = zeros(1, n);
accepted = zeros(1, n);
any(accepted == 0)
%o = x.*exp(-1.*x);
hold on;
yline(m*b);
plot(x, f);
%plot(x, o);
for i = 1:n
    x = a + (b-a)*rand(1, 1);
    y = a + ((m*b)-a).*rand(1, 1);
    f = @(x)((lambda/factorial(k - 1)).*(x).^(k-1)) .* exp(-1*lambda.*x);
    if y <= f(x)
       plot(x, y, 'b.');
        accepted(i) = x;
%     else
%         plot(x_star, u_star, 'r.')
    end
    observations(i) = x;
end
accepted_x_stars = nonzeros(accepted);
disp(length(accepted_x_stars));
histogram(accepted_x_stars, 'Normalization', 'pdf');
hold off;

sample_mean = mean(observations);
sample_variance = var(observations);
median_X = median(sample_mean);

