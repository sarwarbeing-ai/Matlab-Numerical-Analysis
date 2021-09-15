% Note: Runga Kutta method of order is called Mid point method

% Pseudocode:
% step1: create a vector for x values with the given step size
% step2: take y(1)=y0 ,here y will be a vector y0 is the solution at x=x0
% step3:% define the right hand side of the ode dy/dx as function handle
% f=@(x,y) x+y  an example where dy/dx=x+y

% step4: for i=2:length(xvec)
% apply rk2 method here

% step5:
% create a matrix with vector of x values and solution vector
% end of the program

% step1:
h=0.5; % step size
xvec=0:h:4;

% step2:
y(1)=1; % initial condition at x=0

% step3:
f=@(x,y) -4*x^3/3+9*x^2-16*x+5;

% step4:
% i goes from 2 to length(xvec) 
% 2 taken as at x=0,y0=1 already been stored into the vector y
for i=2:length(xvec)
    % RK2 method
    k1=h*f(xvec(i-1),y(i-1));
    k2=h*f(xvec(i-1)+h/2,y(i-1)+k1/2);
   
    % get the next solution for y at x=xvec(i)
    y_next=y(i-1)+k2;
   
    % store the solution y_next into the vector y
    y(i)=y_next;
end


% step5: create the matrix
mat=[xvec', y']; % ' is the tranpose operator as xvec and y were row vectors

disp(mat) % display the matrix
