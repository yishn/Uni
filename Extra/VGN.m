function [iterations, xstar] = VGN(f, J, x0, dimension)
    % f should be a matrix like this:
    % f = [t11 t12 ... t1n r1;
    %      t21 t22 ... t2n r2;
    %      ...
    %      tk1 tk2 ... tkn rk]
    %
    % dimension = n

    iterations = 0;
    xstar = x0;
    r = f(:, dimension + 1);
    
    while 1
        xold = xstar;
        xstar = xold - (D' * D) \ (D' * r);
              
        iterations = iterations + 1;

        if max(abs(xstar - xold)) <= 10^(-8)
            return
        end
    end
end

