% demonstration 
% part a))
% define the function using function handle @
f1=@(x) 3*x^3-2*x^2-3*x+12;

% define the derivative of f
df1=@(x) 3*3*x^2-2*2*x-3;
x0=-2;
tol=0.001;
maxIter=300;
root=newton(f1,df1,x0,tol,maxIter);
fprintf('The solution for part a is %.2f',root)
fprintf('\n')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part b))
f2=@(x) 3*x^5-2*x^4+4*x^3+5*x^2-16;
df2=@(x)  3*5*x^4-2*4*x^3+4*3*x^2+5*2*x;

x0=1;
tol=0.001;
maxIter=300;
root=newton(f2,df2,x0,tol,maxIter);
fprintf('The solution for part b is %.2f',root)
fprintf('\n')



function root=newton(f,df,x0,tol,maxIter)
    % input:
    % f: function to find the root
    % df: is the derivative of f
    % x0: is the initial guess for root
    % maxIter:maximum iterations allowed
    % tol: tolerance
    
    % output:
    % root: is the root of the function  f
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for n=1:maxIter
        
        x_next=x0-f(x0)/df(x0); %newton's formula ,find next approximate
    
        % check for the tolerance
        if abs(x_next-x0)<tol
            root=x_next;
            break % break the for loop
        else
            x0=x_next; % update the initial guess for the next iteration
        end
        
    end
end