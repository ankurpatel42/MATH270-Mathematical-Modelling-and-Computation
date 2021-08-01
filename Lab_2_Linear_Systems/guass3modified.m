function x = guass3modified(A, b)
    [M, N] = size(A);
    % Pivot row, largest absolute value in column for a 3x3 matrix    
    row_swap_i = 1;
    largest_abs_col_val = 0;
    
    for k = 1:N
        if abs(A(k,1)) > largest_abs_col_val
            largest_abs_col_val = A(k, 1);
            row_swap_i = k;
        end
    end
    
    A([1,row_swap_i],:) = A([row_swap_i,1],:);
    b([1,row_swap_i],:) = b([row_swap_i,1],:);
    
    % Guassian elimination
    i = 2;
    j = 1;
    r = -1 *((A(i,j) / A(j,j)));
    [A, b] = rowop(A, b, i, j, r);
    
    i = 3;
    j = 1;
    r = -1 *((A(i,j) / A(j,j)));
    [A, b] = rowop(A, b, i, j, r);
    
    % Pivot row, largest absolute value in column for a 3x3 matrix    
    row_swap_i = 2;
    largest_abs_col_val = 0;
    
    for k = 2:N
        if abs(A(k,2)) > largest_abs_col_val
            largest_abs_col_val = A(k, 2);
            row_swap_i = k;
        end
    end
    
    A([2,row_swap_i],:) = A([row_swap_i,2],:);
    b([2,row_swap_i],:) = b([row_swap_i,2],:);
    
    % Guassian elimination
    i = 3;
    j = 2;
    r = -1 *((A(i,j) / A(j,j)));
    [A, b] = rowop(A, b, i, j, r);
    
    % Back substitution
    x = zeros(3, 1);
    x(3) = b(3) / A(3,3);
    x(2) = ( b(2) - A(2,3) * x(3)) / A(2, 2);
    x(1) = ( b(1) - (A(1,2) * x(2) + A(1,3) * x(3))) / A(1,1);
    
end