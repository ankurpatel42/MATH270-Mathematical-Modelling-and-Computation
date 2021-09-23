function dy = f(t, y)
    l = 0.1;
    g = 9.81;
    dy = [0; 0];
    dy(1) = y(2);
    dy(2) = -1*(g / l)*sin(y(1));
end