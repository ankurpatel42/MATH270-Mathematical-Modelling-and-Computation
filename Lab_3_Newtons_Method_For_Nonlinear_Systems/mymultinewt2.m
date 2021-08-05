function results =  mymultinewt2(x, niter, tol)

% A simple function M-file using Newton's method

results = zeros(niter, 4);
h = 0.0001;
for k = 1:niter
    J = jacobian_matrix(x, h);
    deltax = J \ -f(x);
    next_x = x + deltax;
    if (norm(next_x - x, inf) / norm(next_x, inf)) < tol
        results(k, :) = [k, x(1), x(2), x(3)];
        break;
    end
    x = next_x;
    results(k, :) = [k, x(1), x(2), x(3)];
end

function f_vector = f(x)
    f_vector = [x(1)^2 - x(1) * x(2) - 10; x(2) + 3 * x(1) * x(2)^2 - 57; x(1) + x(2) - 2 * x(3)];
end

function J = jacobian_matrix(x, h)
    n = numel(x);
    J = zeros(n,n);
    h_vector = transpose(zeros(1, n));
    for i = 1:n
        h_vector(i) = h;
        x_i_vec = (f(x + h_vector) - f(x)) / h;
        for m = 1:n
            J(m, i) = x_i_vec(m);
        end
        h_vector(i) = 0;
    end
    
%    a = (f(x + [h;0;0]) - f(x)) / h;
%    b = (f(x + [0;h;0]) - f(x)) / h;
%    c = (f(x + [0;0;h]) - f(x)) / h;
%    J = [a(1), b(1), c(1); a(2), b(2), c(2); a(3), b(3), c(3)];
end

end