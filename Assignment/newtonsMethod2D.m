function x = newtonsMethod2D(f,J,x0,niter,h,tol)
    x = x0;
    for i = 1:niter
        v_i = x(1);
        p_motor_i = x(2);
        change = J(v_i,p_motor_i,h)\(-1*f(v_i,p_motor_i));
        next_x = change + x;
        if(norm(next_x-x)/norm(x)) < tol
            x = next_x;
            break
        end
        x = next_x;
    end
end