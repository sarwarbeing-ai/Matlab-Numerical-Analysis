
% define the Jacobian matrix using function handle @
% where each row corresponds to the derivative of each equation
% with respect to each variable
% eg: J=[df1/dx,df1/dx2;df2/dx1,df2/dx2] here df1/dx is the partial
% derivative 

% equations
% f1(x,y)=x^2/16 + y^2/4-1=0
% f2(x,y)=x^2-y^2-1=0

J=@(x,y)[2*x/16,2*y/4;2*x,-2*y];% Jacobian


% initial guess 
% if you want you can take different values
initial_guess=[0.5;0.5];% initial guess NR method

% define the function f as vector of eqn1,eqn2
f=@(x,y) [x^2/16 + y^2/4-1;x^2-y^2-1];

tol=sqrt(eps);
MAX=1000; % maximum iterations allowed


for i=1:MAX
    
    x=initial_guess(1);
    y=initial_guess(2);
    
    % calculate the next guess
    next_guess=initial_guess-inv(J(x,y))*f(x,y);
    
    % calculate the error
    err=norm(next_guess-initial_guess);
    if err<tol
        xy=initial_guess;% solution vector
        break % break the loop
    end
    
    
    
    % update the initial_guess
    initial_guess=next_guess;
end


disp("The solution vector is ")
disp(xy)