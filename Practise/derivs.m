function [dfdx, d2fdx2] = derivs(func, x, h)
    dfdx = (func(x+h)-func(x))/h;
    d2fdx2 = (func(x+h)+func(x-h)-2*func(x))/h^2;
