function  [xk] = newton_raphson(x0,noOfIteration,abs_tol,rel_tol) 

tolerance = 1e-7;
converged=false;

[func, J] = funcaa();

count = 0;

xk = x0;
niter = 0;
func0 = feval(func,xk);
for niter = 1:noOfIteration
    if norm(func(xk)) > 0.1 * norm(func(x0))
     Jev = feval(J,xk);
     count= count+1;
    end    
    xk = xk - Jev\func0;
    func0 = feval(func,xk);
    norm1 = norm(func0);
    disp(norm1);
    if (norm1 <=rel_tol*norm1 || ...
        (norm1 <= abs_tol && norm(xk-x0) <= tolerance))
       converged = true;
    end
    if converged == true
        disp("Converged!");
        break;
    end
   
end
output.MaxIter = niter;
output.Norm = norm1;
output.JevReq = count;
disp(output)
end

