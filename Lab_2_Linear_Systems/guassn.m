function x = guassn(A, b)
    [M, N] = size(A);
    % Guassian elimination
    for j = 1:N-1
        for i = j+1: N
            r = ((A(i,j)) / (A(j,j))) * -1;
            [A, b] = rowop(A, b, i, j, r);
        end
    end
    
    % Back substitution
    for i = N:-1:1
        total = 0;
        for j = i+1: N
            total = total + (A(i,j) * x(j));
        end
        x(i) = (b(i) - total) / A(i, i);
    end
end