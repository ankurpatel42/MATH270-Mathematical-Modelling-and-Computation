function x = myfunc1(val) %x is the return value defined in 'function x', 'myfunc1' is the name of the file.
    if val <= -2
        x = 3 * (val)^2 - 2 * (val);
    elseif val > -2 & val <= 1
        x = sqrt(val + 2) + 16;
    else
        x = exp(val / 5) + sin(val);
    end
