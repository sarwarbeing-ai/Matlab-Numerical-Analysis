% ask the user for the order of the polynomial
n=input('Enter the order of the polynomial: ');
                                                    

% use while loop to repeat untill user entered correct input(positive
% integer)
% fix function discards decimal part
% if a user entered incorrect input ,then this loop will be evaluated
while n<=0 || fix(n)~=n
    disp('n must be a positive ineteger')
    %ask the user again
    n=input('Try again:Enter the order of the polynomial: ');
end

global coefficients % declare vector coefficients to be gloabl
% as this will be used inside the polynomial function

coefficients=[]; % an empty vector to store the coefficient value

%ask the user for the coeffcients of the polynomial
for i=0:n-1 % loop goes from 0 to n-1
    a=input(['Enter the coefficient for ',num2str(i) ,': ']); % [] use to concatenate strings
    
    coefficients(i+1)=a; % store the coefficient value into the vector coefficients
                          % i+1 taken as indexing in matlab starts at 1
end

%ask for the last coefficient
last=input('Enter the last coefficient: ');

% use while loop untill user entered correct last coefficient
while last==0
    disp('The last coefficient must be nonzero')
    
    % ask the user again
    last=input('Try again:(Enter the last coefficient): ');
end

coefficients(n+1)=last; % store the last coefficient into the vector

% ask for the initial value x0
x0=input('Enter the initial guess for the root: ');

h=10^(-6); % step size for derivative

iter=1; % initialize iteration by 1

% use an infinite loop
while 1
    % get the numerical derivative at x=x0
    df=(f(x0+h)-f(x0-h))/(2*h); % using central difference
    
    % check if f(x0)<10^(-14)
    if abs(f(x0))<10^(-14) % here absolute of f(x0) taken as f(x0) can be a very small negative value(eg:f(x0)=-0.000000001))
                              
        xm=x0; % return the root
        break % break the loop
    
    elseif iter>10^10 || (abs(f(x0))>10^30 || abs(df)<10^(-100))
        disp("Couldn't find a root")
        break % break the loop,will terminate the while ,hence the Newton's method
        
    elseif abs(f(x0))>10^(-14) && df==0
        disp('The method failed.Pick another starting point')
        % ask the user for another initial guess
        x0=input('Enter another guess');
        
        iter=1; % reset iter to 1 
    else
        
        % get the next guess for root
        next_x0=x0-f(x0)/df; % Newton's method
        
        % update the initial guess
        x0=next_x0;
        
        iter=iter+1; % increment iter by 1
    end
end


        
% print the root
disp(['The solution to the given polynomial is ',num2str(xm)])


disp(f(5))
% define the polynomial
function p=f(x)
global coefficients % declare the vector coefficients to be global variable
% otherwise you can't use it inside this function

    p=0; % initialize to zero,polynomial
    for i=1:length(coefficients)
        p=p+coefficients(i)*x^(i-1); % power i-1 as indices in Matlab starts from  1
        
    end
    
end

