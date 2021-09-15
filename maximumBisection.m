% define the the function as function handle
f=@(x) -2*x^6-2.5*x^4+5*x+20;

% in order to find maximum of f 
% you need to find the of the function
% f'(x) which is the derivativw of f
% the root of the function f'(x) will be 
% the point at which thw function f
% attained maximum

% ao define f' as function handle
f_prime=@(x) -12*x^5-10*x^3+5;

% interval
a=0;
b=2;

tol=10^-7;% tolerance,change it if you want different

% call the function bisec to get the root
root=bisec(f_prime,a,b,tol);

% the maximum value of f
maxVal=f(root);

% display to the command window
disp(['Maximum value of f obtained at ','x=',num2str(root), ' is ',num2str(maxVal)])





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
        if abs(b-a)<tol || abs(f(c))<tol
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
