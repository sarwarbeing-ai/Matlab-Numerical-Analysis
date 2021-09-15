function minimize

% Note: I have used golden section search to minimize a function
% since golden section search maximizes a function therefore to minimize a 
% function you need to take the negative of the function 
f=@(x) -exp(x).*(3.1*x.^4-20.2*x.^3-0.3*x.^2+22.7*x-40); % function handle

% interval
a=0;
b=10;
eps=10^-6; % tolerance(precision)

% call nested function golden section search
x_min=goldenSectionSearch;

% diplay the minimze point as well as minimize value of the function f
disp(['xmin=',num2str(x_min)])
disp(['minimum value of f is ',num2str(-f(x_min))]) % - taken as f was defined -ve 


% nested function
function x_max=goldenSectionSearch

% get the value of golden ratio
gr=(sqrt(5)-1)/2;

% use infinite while loop to find the maximum point
while 1
    d=gr*(b-a);
   
    % determine the intermediate points x1 and x2
    x1=a+d;
    x2=b-d;
   
    % check for the tolerance
    if abs(b-a)<eps
        % return the point where maximum occurs
        x_max=(a+b)/2;
        break; % break the while loop
        
    end
   
    % check if f(x1)>f(x2)
    if f(x1)>f(x2)
       
        % update the interval as well as intermediate points
        a=x2; % a change to x2
        x2=x1; % x2 will become x1
       
        % Note: b will remain same
     
         x1=a+gr*(b-a);
   
   
    else
        b=x1;
         x1=x2;
            
         x2=b-gr*(b-a);
           
        % Note: a will remain same
            
    end
   
   
   
end
end
end

