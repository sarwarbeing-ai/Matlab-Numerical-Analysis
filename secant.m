function root=secant(f,x0,x1,tol)
    % input:
    % f: function(function handle) to find the root
    % x1,x0: are the initial guesses
    % tol: tolerance
    
    % output:
    % root: root of the function f
    
    
    % infinite while loop
    while 1
        
        x_next=x1-f(x1)*(x1-x0)/(f(x1)-f(x0)); %secant's formula ,find next approximate
        
         
    
        % check if the tolerance satisfied
        if abs(x_next-x1)<tol
            root=x_next;
            break % break the for loop
        else
            % update the initial guesses for next iteration
            x0=x1;
            x1=x_next;
        end
        
    end
end
