function dy = myfunc(t,y)
    A = 15000;
    E = 5000;
    R = 8.3;
    k = 0.5;
    T = 15;
    dy = A*exp(-1*(E/(R*y))) - k*(y-T);
end