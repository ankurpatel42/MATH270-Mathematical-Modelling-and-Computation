function [relative_error, relative_residual] = myerrors(A, x)
    b = A * x;
    x1 = A\b;
    relative_error = norm(x - x1, inf) / norm(x, inf);

    b1 = A * x1;
    relative_residual = norm(b - b1, inf) / norm(b, inf);
end