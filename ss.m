% demonstration 
% part a))
% define the function using function handle @
f1=@(x) 3*x^3-2*x^2-3*x+12;
x0=-2;
x1=-1;
tol=0.001;
maxIter=300;
root=secant(f1,x0,x1,tol,maxIter);
fprintf('The solution for part a is %.2f',root)
fprintf('\n')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part b))
f2=@(x) 3*x^5-2*x^4+4*x^3+5*x^2-16;
x0=1;
x1=2;
tol=0.001;
maxIter=300;
root=secant(f2,x0,x1,tol,maxIter);
fprintf('The solution for part b is %.2f',root)
fprintf('\n')



function root=secant(f,x0,x1,tol,maxIter)
    % input:
    % f: function to find the root
    % x1,x0: are the initial guesses
    % maxIter:maximum iterations allowed
    % tol: tolerance
    
    % output:
    % root: is the required of f
    
    for n=1:maxIter
        
        x_next=x1-f(x1)*(x1-x0)/(f(x1)-f(x0)); %secant's formula ,find next approximate
        
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