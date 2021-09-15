 % f: function(function handle) to find the root
 f=@(x) exp(x)-x-1;
 
 % p0,p1: are the initial guesses
 p0=1;
 p1=0.5;
 
 % tol: tolerance
 tol=10^-12;
 
 
 % infinite while loop
 while 1
       
        x_next=p1-f(p1)*(p1-p0)/(f(p1)-f(p0)); %secant's formula ,find next approximate
       
        % check if the method does not converge
        % here if absolute value of f(x_next)>10^5
        % the system is diverging as f(x_next) will be approximately zero
        % as iteration goes
        
        if abs(f(x_next))>10^5
            disp("The method failed to converge!!")
        end
        
        % check if the tolerance satisfied
        if abs(f(x_next))<tol
            r=x_next % return the root 
            break % break the for loop
        else
            % update the initial guesses for next iteration
            x0=p1;
            p1=x_next;
            
        
        end
       
 end

 
 
