function [newA, newb] = rowop(A, b, i, j, r)
    [M, N] = size(A);
    A(:,N + 1) = b; % add the b vector onto the matrix, N increased by 1 now
    A(i:i, 1:N+1) = A(i:i, 1:N+1) +  (r * A(j:j, 1:N+1));
    newA = A(1:N, 1:M); % new matrix A
    newb = A(:,N+1); % new vector b
end