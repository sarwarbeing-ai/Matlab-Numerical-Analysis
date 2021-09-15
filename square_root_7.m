% let x be a number 
% in order to find the square root of x the following equation be 
% formed
% sqrt(x)=y  where y is the square root of x
% so the above equation can be re-written as y^2-x=0
% that is you need to find the root of the equation y^2-x
% and the root would be square root of x
% if x=7 then ,the root of the equation y^2-7=0 will be the square 
% root of 7

% define the equation using function handle @
f=@(y) y^2-7;

% for bisection method to work ,the interval at which the root is located
% must be present
a=2; % lower end point of the interval
b=3; % upper end

% check if f(a)*f(b)<0 
% this is the initial necessary condition for bisection method to work

if f(a)*f(b)>=0
   error("The intial end point of the interval must satisfy the condtion f(a)*f(b)<0")
end
    
tol=10^-2; % within this root will be found
        
% use while loop to go as far as the tolernace is not satisfied
while 1
        square_root=(a+b)/2; %calculate the midpoint between a and b
    
        fval=f(square_root); % evaluate function value at root
        
        % check for the tolerance        
        if abs(fval)<tol
            break; % break the while loop
            
        % do otherwise    
        else
            % check if the sign of fval is equal to the sign of the function
            % value at a
            if sign(fval)==sign(f(a)) 
                a=square_root; % change the lower limit 
            else 
                b=square_root;% change the upper limit otherwise 
            end
        end
        
end
    
% display the root
% [] to concatenate strings
disp(['The square root of 7 is ',num2str(square_root)])

