function A = tridiagonal(h, n)
    main = [1; (2/h^2)*ones(n-1, 1); 1];
    sub = [(-1/h^2)*ones(n-1, 1); 0];
    super = [0; (-1/h^2)*ones(n-1, 1)];
    A = diag(main) + diag(super, 1) + diag(sub, -1);
end