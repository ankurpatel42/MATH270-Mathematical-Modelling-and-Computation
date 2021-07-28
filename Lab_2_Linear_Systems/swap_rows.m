function [A, b, divisor] = swap_rows(A, b, i, j)
        [M, N] = size(A);
        temp_b_j = b(j);
        b(j) = b(i);
        b(i) = temp_b_j;
        row_j = A(j:j, 1:N);
        A(j:j, 1:N) = A(i:i, 1:N);
        A(i:i, 1:N) = row_j;
        divisor = A(j,j);
end