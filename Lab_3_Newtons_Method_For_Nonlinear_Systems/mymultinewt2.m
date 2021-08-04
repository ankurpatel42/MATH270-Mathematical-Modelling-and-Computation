function results =  mymultinewt2(x, niter, tol)

% A simple function M-file using Newton's method

results = zeros(niter, 5);
h = 0.0001;
for k = 1:niter
    J = jacobian_matrix(x, h);
    deltax = J \ -f(x);
    next_x = x + deltax;
    if (norm(next_x - x, inf) / norm(next_x, inf)) < tol
        results(k, :) = [k, x(1), x(2), f(1), f(2)];
        break;
    end
    x = next_x;
    results(k, :) = [k, x(1), x(2), 0, 0];
end

function f_vector = f(x)
    f_vector = [x(1)^2 - x(1) * x(2) - 10; x(2) + 3 * x(1) * x(2)^2 - 57; x(1) + x(2) - 2 * x(3)];
end

function J = jacobian_matrix(x, h)
    n = numel(x);
    J = zeros(n,n);
    h_vector = zeros(1, n);
    for i = 1:n
        h_vector(i) = h; % something wrong with this
        col = (f(x + [h_vector(i);h_vector(i);h_vector(i)]) - f(x)) / h;
        for j = 1:n
            J(j,i) = col(j);
        end
        h_vector(i) = 0;
    end
%     a = (f(x + [h;0;0]) - f(x)) / h;
%     b = (f(x + [0;h;0]) - f(x)) / h;
%     c = (f(x + [0;0;h]) - f(x)) / h;
%     disp(a);
%     disp(b);
%     disp(c);
end

end