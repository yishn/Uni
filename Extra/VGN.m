function [xstar, iterations] = VGN(f, J, x0)
    % f is a vector function consisting of the 
    % residue functions with respect to x
    %
    % J is the Jacobian matrix function of f 
    % with respect to x

    iterations = 0;
    xstar = x0;
    
    while 1
        xold = xstar;
        
        % Calculate new xstar
        D = J(xold);
        r = f(xold);
        xstar = xold - (D' * D) \ (D' * r);
        
        % Increment iterations
        iterations = iterations + 1;

        % Stop condition
        if max(abs(xstar - xold)) <= 10^(-8)
            return
        end
    end
end

