function results = myerrors2
    results(1, :) = [0, 0, 0, 0];
    for n = 2:11
        H = hilb(n);
        x = transpose(ones(1, n));
        b = H * x;
        x1 = H\b;
        relative_error = norm(x - x1, inf) / norm(x, inf);

        b1 = H .* x1;
        relative_residual = norm(b - b1, inf) / norm(b, inf);

        condition_number = cond(H,inf);
        
        results(n, :) = [n, relative_error, relative_residual, condition_number];
    end
end