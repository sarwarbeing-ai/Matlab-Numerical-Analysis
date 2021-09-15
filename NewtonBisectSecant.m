% drivers function
function driver
    
    % a and b are chosen as
    % a cannot be less than equal to zero
    % log is not defined for x<=0
    a=0.000005;  % lower end point of the interval
    b=2;
    tol=10^-7;
    
    % call bisection method
    
    IG1=bisection(a,b,tol);
    
    %call Newton
    IG2=Newton(IG1,tol);
    
    sol=Secant(IG1,IG2,tol);
    disp('The solution of ln(x)+1=0 is '),sol
    
end

function root=Newton(IG,tol)
    % input:
    % IG: is the initial guess
    % tol: tolerance
    
    %output:
    % root of the function f
    
    % define the function f
    f=@(x) log(x)+1;
    
    % define the derivative of f as function handle
    % define the function f
    df=@(x) 1/x;
    
    
% use while looo as far as residue satifies
% tolerance
while true 
    
    x=IG-f(IG)/df(IG); %newton's formula,get next root approximation
    
    % check if the function value is less than tol at x0
   if abs(f(IG))<tol
       
    root=IG;
    break;
    
   end
   
   IG=x; % update the initial guess for the next iteration
end

end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function root=bisection(a,b,tol)
    % input:
    % a: a is the lower limit of the interval
    % b: is the upper limit of the interval
    % tol-tolerance
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % output:
    % root : is the root of the function f
 
    
    % define the function f
    f=@(x) log(x)+1;
    
    
    % check if f(a)*f(b)<0 
    % this is the initial necessary condition for bisection method to work

    if f(a)*f(b)>=0
        error("The intial end point of the interval must satisfy the condtion f(a)*f(b)<0")
    end
    
        

    while 1
        c=(a+b)/2; %calculate the midpoint between a and b
    
        fval=f(c); % evaluate function value at c
        
        % check if tolerance  is satisfied
        if abs(f(c))<tol
            break; % break the while loop
            
            % do otherwise    
        else
            % check if the sign of fval is equal to the sign of the function
            % value at a
            if sign(fval)==sign(f(a)) 
                a=c; % change the lower limit 
            else 
                b=c;% change the upper limit otherwise 
            end
        end
        
    end
    root=c; % return root
    
end









function root=Secant(IG1,IG2,tol)
    % input:
    % IG1,IG2: are the initial guesses
    % tol: tolerance
    
    % output:
    % root: root of the function f
    
    % define the function f
    f=@(x) log(x)+1;
    
    % infinite while loop
    while 1
        
        x_next=IG2-f(IG2)*(IG2-IG1)/(f(IG2)-f(IG1)); %secant's formula ,find next approximate
        
         
    
        % check if the tolerance satisfied
        if abs((IG1-IG2)/IG2)<tol
            root=IG2;
            break % break the for loop
        else
            % update the initial guesses for next iteration
            IG1=IG2;
            IG2=x_next;
        end
        
    end
end
