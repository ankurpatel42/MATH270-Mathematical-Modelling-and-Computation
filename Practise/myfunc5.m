function x = myfunc5(val)
    x = (val + 2) .* abs(val - 1) .* (val.^2 - 2 .* val - 5);
