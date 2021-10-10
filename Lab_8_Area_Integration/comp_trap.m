function int = comp_trap(f, a, b, n)
      int = 0;
      h = (b - a)/n;
      x = a:h:b;
      for i = 1:n % (n - k, but i can't start at 0)
          int = int + trap(f, x(i), x(i+1));
      end
%     h = (b - a)/n;
%     x0 = h;
%     sum_middle = 0;
%     for i = 2:n
%         sum_middle = sum_middle + 2*f(x0);
%         x0 = x0 + h;
%     end
%     int = (h/2)*(f(a) + sum_middle + f(b));
end