function x = myfunc6(val1, val2)
    x = (val1 - val2 - 3) .* abs(val1 + 2) .* val1 .* val2.^2;
