function [results, converge_flag] = jacobi(A, b, x, niter, tol)
    results = zeros(niter, 4);
    D = diag(diag(A));
    L = tril(A, -1);
    U = triu(A, 1);
    D_inverse = inv(D);
    converge_flag = 0;
    for k = 1:niter
        next_x = D_inverse * ((- (L + U)*x)) + (D_inverse * b);
        if (norm(next_x - x, inf) / norm(next_x, inf)) < tol
            converge_flag = 1;
            results(k, :) = [k, x(1), x(2), x(3)];
            break;
        end
        x = next_x;
        results(k, :) = [k, x(1), x(2), x(3)];
    end
end