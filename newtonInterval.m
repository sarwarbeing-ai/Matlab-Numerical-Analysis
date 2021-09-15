% define f as function handle
f=@(x) 1/(1+exp(x))-1/2;
df=@(x) -((1+exp(x))^-2)*(exp(x)); % derivative of 1/(1+exp(x))=(1+exp(x))^-1 is
                                   % -((1+exp(x))^-2)*exp(x) and
                                   % derivative of -1/2 is zero
 % create a grid of points from -5 to 5  interval chossen around r=0
 grid=linspace(-5,5,500); % 500 equally spaced points from -5 to 5
 
 accepts=[]; % accepted points
 for p=grid
     bool= isnewton(f,df,p,10^-20,100000); % tolerance is 10^-20
     if bool==1 % Newton's method converged
         accepts=[accepts,p]; % store the point p into the vector accepts
     end
 end
 
 % interval
 interv=[min(accepts) max(accepts)] % print the interval
 
 
 %% function definition
 function bool= isnewton(f,df,x0,eps,maxit)
% f is a function handle
% df is the derivative of 
% x0 is the initial guess
% eps is the tolerance as the root won't be exactly zero
% due to loss of precision
% amxit is the maximum iterations allowed

% bool is the logical return
% o if newton does not converge
% 1 means converged



it=0;
while 1
    x=x0-f(x0)/df(x0); % Newtons formula
    
    
    
    if it==maxit
        bool=0; % return 0,does not converge
        break % break the loop
    elseif abs(f(x0))<eps % check if  f(x0) is less than eps
        bool=1; % return 1
        break 
    else
        it=it+1; % update iteration by 1
       
        x0=x; % update x0 
    end
    

end

end
