function [A, x] = modifiedtridiagonal(h, n, a, b, c, Ta)
    super = [0; (-1/h^2)*Ta*ones(n-1, 1)];
    main = [1; (((2/h^2)+c)*Ta)*ones(n-1, 1); 1];
    sub = [(-1/h^2)*Ta*ones(n-1, 1); 0];
    A = diag(main) + diag(super, 1) + diag(sub, -1);
    x = zeros(n+1,1)+(c*Ta);
    x(1) = a;
    x(n+1) = b;
end