function int = comp_simp(f, a, b, n)
      h = (b - a)/n;
      x = a:h:b;
      x
      middle = 0;
      if n == 1
          int = simp(f, a, b);
      else
          for i = 2:n
              x(i)
              if mod(i, 2) == 0
                  middle = middle + 4*f(x(i));
              else
                  middle = middle + 2*f(x(i));
              end
          end
          int = ((h)/3) * (f(a) + middle + f(b));
      end
%     h = (b-a)/n;
%     x = a:h:b;
%     x0 = a;
%     sum_middle = 0;
%     if n == 1
%         int = (h/3)*(f(x(1)) + 2*f(x(2)) + f(x(3)));
%     else
%         for i = 2:n+1 % (i = 1 is the first point, i = n+1 is the last point, both only included at the end)
%             if mod(i, 2) == 0
%                 sum_middle = sum_middle + 4*f(x0);
%             else
%                 sum_middle = sum_middle + 2*f(x0);
%             end
%             x0 = x0 + h;
%         end
%         int = (h/3)*(f(a) + sum_middle + f(b));
%     end
end
