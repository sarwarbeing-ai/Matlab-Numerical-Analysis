% define the derivative of f
df=@(x) 0.5*exp(0.5*x);
ddf=@(x) 0.25*exp(0.5*x); % double derivative of f

% derivative of g
dg=@(x) -0.25*exp(-0.25*(x-10));
ddg=@(x) 0.25*0.25*exp(-0.25*(x-10)); % double derivative of g


x0=0.1; % initial guess
maxiter=500;
x_f=newton(df,ddf,x0,maxiter); % value of x* for f
x_g=newton(dg,ddg,x0,maxiter); % value of x* for g


% now find f(x*) and g(x*)
fval_x=exp(0.5*x_f); % possible smallest value of f
gval_x=exp(-0.25*(x_g-10)); % smallest possible value of g



% now plot
x=-5:0.5:10; % vector x
f=exp(0.5*x); % function value for all points of x
g=exp(-0.25*(x-10));

% red circle for f(x*),green circle for g(x*)
plot(x,f,'-k',x,g,'-m',x_f,fval_x,'or',x_g,gval_x,'og') % plotting all in one graph



% to find value as small as possible ,you can use newton method to
% find the possible smallest value
% construct a function to obtain smallest possible value
function smallest=newton(df,ddf,x0,maxiter)
% df is the derivative of a continous function
% should be written as an anonymous function using @
% ddf is the double derivative of the function f
% x0 is the initial guesss
% maxiter maximum iteration permitted

% check if the function newtion has atleast two arguments
if nargin<2
    error("Function requires atleast two arguments!!")
end

% check if x0 empty
if nargin<3
    x0=0; % initialize to 0
end

% check if maxiter is empty
if nargin<4
    maxiter=200; % intialize to 200
end

% use while loop to determine the smallest possible value 
% within some tolerance
for i=1:maxiter
    % formula xn+1=xn-df(xn)/ddf(xn)
    next_x=x0-df(x0)/ddf(x0); % newton's method to detetermine smallest possible of f
    
    smallest=x0; % return the value at which the function f has smallest value
    x0=next_x; % update the initial guess
end
end
