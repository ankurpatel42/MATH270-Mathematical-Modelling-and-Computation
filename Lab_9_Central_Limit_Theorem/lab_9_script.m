clc;
clear;
observations = [8, 16, 19, 9, 20, 10, 16, 13, 14, 17, 12, 7, 16, 8, 6, 8, 12, 10, 15, 10, 13, 13, 13, 16, 17, 15, 11, 7, 14, 16];
sample_m = mean(observations);
sample_standard_deviation = std(observations);
sample_mean = (1.645)*((sample_standard_deviation)/sqrt(length(observations)));


critical_value = norminv(0.975, 0, 1);
epsilon = 0.5;
n_ = ((sample_standard_deviation*critical_value)/(epsilon))^(2);

samples = poissrnd(sample_m, 30, 1000);
sample_means = mean(samples);
histogram(sample_means, 'Normalization', 'pdf');
z = 10:0.01:15;
hold on;
%plot(x,normpdf(z, sample_m, sample_standard_deviation/sqrt(30)));
hold off;

x = 0:0.01:10;
plot(x, lognpdf(x));

n = 1000;
samples = lognrnd(0, 1, n, 1000);
sample_means = mean(samples);
mu = exp(0.5);
standard_dev = sqrt((exp(1)-1)*exp(1));
for i = 1:length(sample_means)
    sample_means(i) = ((sample_means(i)-mu)/(standard_dev/(sqrt(n))));
end
[f,x] = ksdensity(sample_means);
plot(x, f, x, normpdf(x))