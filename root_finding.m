clear all;
% define the function f using function handle
f=@(x) cos(x)-3*x;

% the derivative of f
df=@(x) -sin(x)-3;
x0=0.5; % intial guesses
x1=0.3;
a=-5;
b=5;
maxIter=400;
tol=10^-4;

% bisection method
[root,err,x]=bisec(f,a,b,tol,maxIter);
fprintf("The root by bisection method is %d",root);
fprintf("\n")

% create a table for bisection method
iter=1:length(x);

% since the length of the vector err is one less than the number of
% iterations
% so insert nan value infront of the array as  at first
% iteration, the relative error is not defined

err=[nan err];

% now create a matrix 
mat=[iter' x' err']; % iter' is the transpose of iter 

% Table
T=array2table(mat,'VariableNames',{'iter','approximate root','error_relative'});

% print the table
disp("The table obtained using bisection method:")
disp(T)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% newraph method
[root,fx,x]=newraph(f,df,x0,tol,maxIter);
fprintf("The root by Newton-Raphson method is %d",root);
fprintf("\n")

% create a table for Newton-raphson method

iter=1:length(x);

% now create a matrix 
mat=[iter' fx' x']; % iter' is the transpose of iter 

% Table
T=array2table(mat,'VariableNames',{'iter','approximate function value','approximate root'});

% print the table
disp("The table obtained using Newton-Raphson method")
disp(T)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% secant method
[root,fx,x]=secant(f,x0,x1,tol,maxIter);
fprintf("The root by secant method is %d",root);
fprintf("\n")

% create a table for secant method

iter=1:length(x);

% now create a matrix 
mat=[iter' fx' x']; % iter' is the transpose of iter 

% Table
T=array2table(mat,'VariableNames',{'iter','approximate function value','approximate root'});

% print the table
disp("The table obtained using secant method")
disp(T)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% finding root by in-built function fzero
root=fzero(f,x0);
fprintf("The root by in-built function fzero is %d",root);



function [root,fx,x]=secant(f,x0,x1,tol,maxIter)
    % input:
    % f: function to find the root
    % x1,x0: are the initial guesses
    % maxIter:maximum iterations allowed
    % tol: tolerance
    
    % output:
    % root: is the required of f
    % fx: vector of values of function at each current root
    % x: is the vector of all values approximating real root
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % check if the function secant has five input arguments
    if nargin<5
        error("The function takes 5 input arguments")
    end
    
    for n=1:maxIter
        
        x_next=x1-f(x1)*(x1-x0)/(f(x1)-f(x0)); %secant's formula ,find next approximate
        
        fx(n)=f(x_next); % function value at current root
        x(n)=x_next; % append approximate root
    
        % check if the tolerance satisfied
        if abs(x_next-x1)<tol
            root=x_next;
            break % break the for loop
        else
            % update the initial guesses for next iteration
            x0=x1;
            x1=x_next;
        end
        
    end
end






function [root,fx,x]=newraph(f,df,x0,tol,maxIter)
    % input:
    % f: function to find the root
    % df: is the derivative of f
    % x0: is the initial guess
    % maxIter:maximum iterations allowed
    % tol: tolerance
    
    % output:
    % root: is the required of f
    % fx: vector of values of function at each current root
    % x: is the vector of all values approximating real root
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % check if the function newraph has five input arguments
    if nargin<5
        error("The function takes 5 input arguments")
    end
    for n=1:maxIter
        
        x_next=x0-f(x0)/df(x0); %newton's formula ,find next approximate
        fx(n)=f(x0); % function value at current root
        x(n)=x0; % append approximate root
    
        % check if the function value is less than tol at x0
        if abs(f(x0))<tol
            root=x0;
            break % break the for loop
        else
            x0=x_next; % update the initial guess for the next iteration
        end
        
    end
end


function [root,err,x]=bisec(f,a,b,tol,maxIter)
    % input:
    % f :function to find the root
    % a: a is the lower limit of the interval
    % b: is the upper limit of the interval
    % maxIter: maximum iterattions allowed
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % output:
    % root : is the root of the function f
    % err: approximate relative error
    % x: is the vectors containing roots approximating the true root of f
    
    
    % check if the function bisec has five input arguments
    if nargin<5
        error("The function takes 5 input arguments")
    end
    
    % check if f(a)*f(b)<0 
    % this is the initial necessary condition for bisection method to work

    if f(a)*f(b)>=0
        error("The intial end point of the interval must satisfy the condtion f(a)*f(b)<0")
    end
     

    for n=1:maxIter
        root=(a+b)/2; %calculate the midpoint between a and b
    
        fval=f(root); % evaluate function value at root
        x(n)=root; % append the current root to the vector x
        
        % check for the tolerance
        if abs(f(root))<tol
            break; % break the for loop
            
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
    
    % calculate the approximate relative error
    % this is outside the for loop as relative error can be 
    % computed after second iteration as
    % relative_error=abs((new-previous)/new)*100 -----(i)

    % first calculate the difference between adjacent elements
    %  this can be done using diff function in matlab 
    % diff(x) calculate the differnce of adjacent elements as follows
    % x(i+1)-x(i)

    diff_vec=diff(x); 

    % now divide the diff_vec element-wise by the vector x(2:end) and
    % then take the absolute value
    % x(2:end) taken ,see the formula in (i)

    err=abs(diff_vec./x(2:end))*100;

end

