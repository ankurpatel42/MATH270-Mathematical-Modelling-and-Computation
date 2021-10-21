function v = newtons_method(f, v0, niter, h, tol)
    v = v0;
    for i = 1:niter
        dfdv = (f(v+h) - f(v))/h;
        v_next = v - ((f(v))/(dfdv));
        if abs((v-v_next)/(v)) < tol
            v = v_next;
            break;
        end
        v = v_next;
    end
end