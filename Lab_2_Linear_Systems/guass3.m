function x = guass3(A, b)
%    [M, N] = size(A);
%     for j = 1:N-1
%         for i = j+1: N
%             r = ((A(i,j)) / (A(j,j))) * -1;
%             [A, b] = rowop(A, b, i, j, r);
%         end
%     end

    % Guassian elimination for 3x3 matrix
    r = ((A(2,1)) / (A(1,1))) * -1;
    [A, b] = rowop(A, b, 2, 1, r);
    r = ((A(3,1)) / (A(1,1))) * -1;
    [A, b] = rowop(A, b, 3, 1, r);
    r = ((A(3,2)) / (A(2,2))) * -1;
    [A, b] = rowop(A, b, 3, 2, r);
    
    % Back substitution
    x = zeros(3, 1);
    x(3) = b(3) / A(3,3);
    x(2) = ( b(2) - A(2,3) * x(3)) / A(2, 2);
    x(1) = ( b(1) - (A(1,2) * x(2) + A(1,3) * x(3))) / A(1,1);
end