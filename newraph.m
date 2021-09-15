
% define the function f as  function handle
f=@(x) exp(2*x)*sin(x)-x*cos(2*x);

df=@(x) exp(2*x)*cos(x)+2*exp(2*x)*sin(x)+2*x*sin(2*x)-cos(2*x); % derivative of f,d(uv)=udv+vdu
                                      % u and v are function of x
                                      % d(uv) is the derivative of the function
                                      % u(x)*v(x)
                                      
                                      % derivative of exp(ax)=a*exp(x)
                                      % sin(x) is cos(x)
                                      % cos(x) is -sin(x)
 
% taken an initial guess for the root
x0=0.5;


           
tol=0.001; % tolerance(precision)

root=newton(f,df,x0,tol);

% display the root
disp(['root=',num2str(root), ' with tol=0.001']) % [] use to concatenate strings

 


tol=0.0001; % tolerance(precision)

root=newton(f,df,x0,tol);

% display the root
disp(['root=',num2str(root), ' with tol=0.0001']) % [] use to concatenate strings





tol=0.00001; % tolerance(precision)

root=newton(f,df,x0,tol);

% display the root
disp(['root=',num2str(root), ' with tol=0.00001']) % [] use to concatenate strings





function root=newton(f,df,x0,eps)
% f is a function
% df is the derivative of f
% x0 is the initial guess
% eps is the tolerance


% use while loop to find the root
           
  while true 
    
     x=x0-f(x0)/df(x0); %newton's formula,next root approximation
    
     err=abs(x-x0); % absolute error
     
     
     
     
     % check if the error satisfies tolerance
     if err<eps

        root=x0; % found the  root
        break % break the while loop
     else
        x0=x; % update the initial guess for the next iteration
     end
        
  end

end



