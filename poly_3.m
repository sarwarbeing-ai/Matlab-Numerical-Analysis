% create the vector x
x=[1.0,1.5,2.0,3.0];
y=[1.214800,1.058201,1.866692,5.399334];

% fit a polynomial order 3
% p a vector of coefficients of the 3rd order polynomial
% in the order A,B,C,D
p=polyfit(x,y,3);

% Extract the value of A,B,C,abd D
A=p(1);
B=p(2);
C=p(3);
D=p(4);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% define the function f using function handle @
% in order to find x such that y(x)=3.875
% it is same as finding the root of the function f(x)=y(x)-3.875
f=@(x) A*x^3+B*x^2+C*x+D-3.875;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x0=1.0;
x3=3.0;
tol=0.001/100;
x=bisec(f,x0,x3,tol);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print the values in the command window
fprintf('x=%f  A=%f   B=%f   C=%f    D=%f',x,A,B,C,D);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% bisection method
function root=bisec(f,a,b,tol)
    % input:
    % f :function 
    % a: a is the lower limit of the interval
    % b: is the upper limit of the interval
    % tol-tolerance
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % output:
    % root : is the root of the function f with the tolerance tol
    
    
    % check if f(a)*f(b)<0 
    % this is the initial necessary condition for bisection method to work

    if f(a)*f(b)>=0
        error("The intial end point of the interval must satisfy the condtion f(a)*f(b)<0")
    end
    
        

    while 1
        c=(a+b)/2; %calculate the midpoint between a and b
    
        fval=f(c); % evaluate function value at root
        
        % check for the tolerance        
        if abs(fval)<tol
            root=c;

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
    
end


