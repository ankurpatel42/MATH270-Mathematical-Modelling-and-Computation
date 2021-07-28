function x = guass3modified(A, b)
%     [M, N] = size(A);
%     for j = 1:N-1
%         for i = j+1: N
%             divisor = A(j,j);
%             if divisor == 0
%              [A, b, divisor] = swap_rows(A, b, i, j);
%             end
%             r = ((A(i,j)) / (divisor)) * -1;
%             [A, b] = rowop(A, b, i, j, r);
%         end
%     end

    % Guassian elimination 3x3 matrix
    divisor = A(1, 1);
    if divisor == 0
        [A, b, divisor] = swap_rows(A, b, 2, 1);
    end
    r = ((A(2,1)) / (divisor)) * -1;
    [A, b] = rowop(A, b, 2, 1, r);
    
    divisor = A(2, 2);
    if divisor == 0
        [A, b, divisor] = swap_rows(A, b, 3, 1);
    end
    r = ((A(3,1)) / (divisor)) * -1;
    [A, b] = rowop(A, b, 3, 1, r);
    
    divisor = A(2, 2);
    if divisor == 0
        [A, b, divisor] = swap_rows(A, b, 3, 2);
    end
    r = ((A(3,2)) / (divisor)) * -1;
    [A, b] = rowop(A, b, 3, 2, r);
    
    % Back substituion
    x = zeros(3, 1);
    x(3) = b(3) / A(3,3);
    x(2) = ( b(2) - A(2,3) * x(3)) / A(2, 2);
    x(1) = ( b(1) - (A(1,2) * x(2) + A(1,3) * x(3))) / A(1,1);
    
end