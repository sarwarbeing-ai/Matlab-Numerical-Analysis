% question 6))


% the Taylor polynomial for e^x around zero is given by 
% e^x=sum(x^k/k!) where sum goes from k=0 to infinity
% for fifth-order polynomial the above sum will go from 0 to 5

x=0.25;
n=5; % number of polynomial terms
sum=0;% initialize sum to zero
for k=0:n
  sum=sum+x^k/factorial(k);
  
end

disp(sprintf("The approximated value of f(x)=e^x at x=0.25 is %d",sum))
disp("**********************************************")


 % upper bound
 % % ther error term for n=5 order Taylor polynomial is 
 % abs((f(6)(c)/(6)!)*x^6) around 0 and f(6) is the sixth derivative of f
 % c is between 0 and x
 
 % in this problem x=0.25 and sixth derivative of f(x)=e^x is e^x
 
 % in order to find the upper bound you need to maximize the error term w.r.t c
 
 % so you need to maximize (0.25)^6)*e^(c)/6! in the interval [0,0.25]
 % since (0.25)^6)/6! is a constant hence you need to just maximize e^c 
 
 % and since it's an exponential function therefore e^c will be maximized at c=0.25
 
disp(sprintf("The upper boound on the absolute error of this approximation is %d",abs(((0.25)^6)*exp(0.25)/factorial(6))))

disp("**********************************************************")



% Question 7))
% let x=5;
x=5;
% taylor polynomial of sin(x) around x=0 
% let c=2
c=4.5;

% some note when n is odd the derivative sin(n+1)(x)= (-1)^(n+1)*sin(x)
% similarly when n is even then the derivative sin(n+1)(x)=(-1)^(n+1)*cos(x)

n=0; % initial  value of n

while true
  if mod(n,2)==0
    error=abs((cos(c)*(x^(n+1)))/factorial(n+1));
  else
    error=abs((sin(c)*(x^(n+1)))/factorial(n+1));
  end
  if error<10^-7
     disp(sprintf("The degree of a Taylor polynomial to approximate sin(x) on [0,2pi) is %d",n))
     break % break out of the while loop
     
   end
   
   %otherwise increment n by 1
   n=n+1;
end