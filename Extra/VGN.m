function [iterations, xstar] = VGN(f, J, x0, dimension)
    iterations = 0;
    xstar = x0;
    r = f(:, dimension + 1);
    
    while 1
        xold = xstar;
        xstar = xold - (D' * D) \ (D' * r);
              
        iterations = iterations + 1;

        if abs(xstar - xold) < 10^(-8)
            return
        end
    end
end

