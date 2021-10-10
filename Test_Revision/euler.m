function [t,y] = euler(dydt, tSpan, y0, n)
    t = linspace(tSpan(1), tSpan(2), n+1);
    y = zeros(size(t));
    y(1) = y0;
    h = (tSpan(2)-tSpan(1))/n;
    for i = 1:n
        k1 = dydt(t(i), y(i));
        y(i+1) = y(i) + h*k1;
    end
end