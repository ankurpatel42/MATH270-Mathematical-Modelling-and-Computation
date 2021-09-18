function dT = chem(t, T)
    A = 30000;
    E = 24900;
    R = 8.3;
    k = 1;
    Ta = 300;
    dT = A*exp(-1*(E/(R*T))) - k*(T - Ta);
end