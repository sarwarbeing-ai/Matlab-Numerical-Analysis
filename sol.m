% in order to find the solution for t
% it is equivalent to solve for root of the following equation
% t^2+exp(-8.0*t)*sin(9.7*t+pi/2)-0.4=0
% to solve for root the bisection method will be used

% define the function using function handle @
% Note :There are two ways to provide function f to the function
% bisec
% 1. define the function f using function handle @
% eg: f=@(x) sin(x)
% 2. or define the function as follows
% fucntion y=f(x)
% y=sin(x)
% end

% If you use first procedure then just provide f
% but if you use second procedure then use
% @f

f=@(t) t.^2+exp(-8.0*t).*sin(9.7*t+pi/2)-0.4;
a=0.0;
b=0.5;
tol=10^-4; % accurate to four digits

% solution 
t=bisec(f,a,b,tol); % value of t
disp(['The answer is ',num2str(t)]) % num2str convert number to string

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function root=bisec(f,a,b,tol)
    % input:
    % f :an anonymous function 
    % a: a is the lower limit of the interval
    % b: is the upper limit of the interval
    % tol-tolerance
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % output:
    % root : is the root of the function f with the tolerance tol
 
    
    % check if the function has atleast 3 arguments
    if nargin<3
        error("The function needs atleast three input arguments")
    end
    
    if nargin<4
        % set the default of the tolerance to be 0.0001( accurate to 4
        % digits)
        tol=10^-4;
    end
    
    
    % check if f(a)*f(b)<0 
    % this is the initial necessary condition for bisection method to work

    if f(a)*f(b)>=0
        error("The intial end point of the interval must satisfy the condtion f(a)*f(b)<0")
    end
    
        

    while 1
        root=(a+b)/2; %calculate the midpoint between a and b
    
        fval=f(root); % evaluate function value at root
        
        % check for the tolerance        
        if abs(fval)<=tol
            break; % break the while loop
            
            % do otherwise    
        else
            % check if the sign of fval is equal to the sign of the function
            % value at a
            if sign(fval)==sign(f(a)) 
                a=root; % change the lower limit 
            else 
                b=root;% change the upper limit otherwise 
            end
        end
        
    end
    
end
