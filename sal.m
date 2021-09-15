% define the the functions
fa=@(x) 3*x^3-2*x^2-3*x+12;

% define the second function
fb=@(x) 3*x^5-2*x^4+4*x^3+5*x^2-16;

% interval
a=-2;
b=-1;
tol=0.001;
% call the function
root_a=bisec(fa,a,b,tol);
disp(['Root for the function a is ',num2str(root_a)])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=1;
b=2;
tol=0.001;
% call the function
root_b=bisec(fb,a,b,tol);
disp(['Root for the function b is ',num2str(root_b)])

function root=bisec(f,a,b,tol)
    % input:
    % f :function 
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
        % set the default of the tolerance to be 0.001
        tol=10^-3;
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
        if abs(b-a)<=tol
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
