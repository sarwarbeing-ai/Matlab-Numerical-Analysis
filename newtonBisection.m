% define the equation of the rocket velocity as function handle
f=@(t) 2400*log(2.8*10^6/(2.8*10^6-1.4*(10^4)*t))-9.81*t-500;

tol=10^-7;% tolerance,change it if you want different

% interval to find the root using bisection method
a=0.5; % initial time taken to be zero
b=30; % 20 seconds taken,if you want take different

% call the function bisec to get the root
root=bisec(f,a,b,tol);
disp(['Bisection Root= ',num2str(root)])



% define the derivative of the equation as function handle
% 500-2400*log(2.8*10^6/(2.8*10^6-1.4*(10^4)*t))-9.81*t;
% 500-2400*log(2.8*10^6)+2400*log(2.8*10^6-1.4*(10^4)*t)-9.81*t; %
% log(a/b)=log(a)-log(b)

% derivative of
% 500-2400*log(2.8*10^6)+2400*log(2.8*10^6-1.4*(10^4)*t)-9.81*t;
% is (2400/(2.8*10^6-1.4*(10^4)*t))*(-1.4*10^4)-9.81; %
df=@(t) (2400/(2.8*10^6-1.4*(10^4)*t))*(-1.4*10^4)-9.81; % derivative of log(b+ax)=a/(b+ax)


x0=0; % initial guess

% get teh root value
root=newton(f,df,x0,tol);

disp(['Newton-Raphson Root= ',num2str(root)])

%%‰%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function root=newton(f,df,x0,tol)
    % input:
    % f: function handle
    % df: function handle,derivative of f
    % x0: is the initial guess
    % tol: tolerance
   
    %output:
    % root of the function f
   
% use while loop untill the relative error is less than
% tolerance
while true
   
    x=x0-f(x0)/df(x0); %newton's formula,get next root approximation
   
    rel_error=abs((x-x0)/x); % relative error
   
    % check if relative error is less than tolerance
   if rel_error<tol
    root=x0; % return the root
    break; % break the while loop
   
   else
      x0=x; % update the initial guess for the next iteration
   end
  
end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function root=bisec(f,a,b,tol)
    % input:
    % f :function handle
    % a: a is the lower limit of the interval
    % b: is the upper limit of the interval
    % tol-tolerance
   
   
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % output:
    % root : is the root of the function f

   
    % check if the function has atleast 3 arguments
    if nargin<3
        error("The function needs atleast three input arguments")
    end
   
    if nargin<4
        % set the default value of tolerance
        tol=10^-4;
    end
   
   
    % check if f(a)*f(b)<0
    % this is the initial necessary condition for bisection method to work

    if f(a)*f(b)>=0
        error("The intial end point of the interval must satisfy the condtion f(a)*f(b)<0")
    end
   
       

    while 1
        c=(a+b)/2; %calculate the midpoint between a and b
   
        fval=f(c); % evaluate function value at c
       
        % check if absolute difference of and b satisfies tolerance 
        if abs(b-a)<=tol
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