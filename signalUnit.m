% unit step function definition:
% u(n)=0 if n<0 otherwise 1

% defined the unit step function as function handle
u=@(n) n>=0; % if n is a vector then u(n) would be vector of 0's and 1's
              % 0's corresponds to those values which are less than 0
              % 1's corresponds to those values which are greater than
              % equal to 0
              

% generate a vector of n values
n=-15:1:15; % -15 to 15 ,you can take different if you want


% define x(n) as function handle
x= @(n) abs(n).*(10*u(n+15)-5*u(n+5)-10*u(n-5)+5*u(n-15)); % .* is the element by element 
                                                     % multiplication
                                                     % if n is a vector
                                                     % then x(n) will be a
                                                     % vector

% generate x1(n)
x1=2*x(n-3)+3*x(n+4)-x(-n);

% generate x2
x2=4*x(4-n)+5*x(n+5)+2*x(n);

% x3
x3=x(n+3).*x(n-2)+x(1-n).*x(n+1);

x4=2*exp(0.5*n).*x(n).*(u(n)-u(n-30))+cos(0.1*pi*n).*x(n+2).*(u(n)-u(n-30));


% plotting time
subplot(2,2,1) % 4 panels,third argument is the index of the current active axes
stem(n,x1,'filled') % stem function is used to plot discrete time signal
                    % filled ,argument will fill the circle i.e with some
                    % color
title("x1")


subplot(2,2,2)
stem(n,x2,'filled')
title("x2")


subplot(2,2,3)
stem(n,x3,'filled')
title("x3")


subplot(2,2,4)
stem(n,x4,'filled')
title("x4")
