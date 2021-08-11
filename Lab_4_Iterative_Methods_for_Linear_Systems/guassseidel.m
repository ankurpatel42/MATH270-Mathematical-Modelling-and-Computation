function [results, converge_flag] = guassseidel(A, b, x, niter, tol)
    results = zeros(niter, 4);
    D = diag(diag(A));
    L = tril(A, -1);
    U = triu(A, 1);
    M = (L + D)\(-U); % this represents x^(k+1) = g(x^(k)) and the properties of the matrix M determine convergence
    c = (L + D)\b;
    converge_flag = 0;
    for k = 1:niter
        % For a 3x3 matrix
        % next_x = transpose(zeros(1, 3));
        % next_x(1) = (1/D(1,1)) * (-(0)-(U(1,2)*x(2) + U(1,3)*x(3)) + b(1) );
        % next_x(2) = (1/D(2,2)) * (-(L(2,1)*next_x(1) + U(2,3)*x(3)) + b(2) );
        % next_x(3) = (1/D(3,3)) * (-(L(3,1)*next_x(1) + L(3,2)*next_x(2)) - (0) + b(3) );
        next_x = M*x + c;
        if (norm(next_x - x, inf) / norm(next_x, inf)) < tol
            converge_flag = 1;
            results(k, :) = [k, x(1), x(2), x(3)];
            break;
        end
        x = next_x;
        results(k, :) = [k, x(1), x(2), x(3)];
    end
end