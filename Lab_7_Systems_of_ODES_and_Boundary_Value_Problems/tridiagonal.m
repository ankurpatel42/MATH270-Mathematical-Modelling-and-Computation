function A = tridiagonal(h, n)
    super = [0; (-1/h^2)*ones(n-1, 1)];
    main = [1; (2/h^2)*ones(n-1, 1); 1];
    sub = [(-1/h^2)*ones(n-1, 1); 0];
    A = diag(main) + diag(super, 1) + diag(sub, -1);
end