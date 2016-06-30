function [iterations, xstar] = VGN(f, J, x0)
    % f is a vector function consisting of the 
    % residue functions with respect to x
    %
    % J is the Jacobian matrix of f with respect to x

    iterations = 0;
    xstar = x0;
    
    while 1
        xold = xstar;
        D = J(xold);
        r = f(xold);
        xstar = xold - (D' * D) \ (D' * r);
              
        iterations = iterations + 1;

        if max(abs(xstar - xold)) <= 10^(-8)
            return
        end
    end
end

