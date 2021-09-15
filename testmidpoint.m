% define the function f as function handle
f=@(x) 3+4*x;

% similarly define g
g=@(x) 3+4*x+6*x.^2; % .^ element by element power
                     % this will work for both scalar as well vector values of x
     
                     
                     
                     
 a=-1;
 b=2;
 n=10;
 
 
 % integral value of f
 I_f=midpoint(a,b,n,f)
 
 % integral of g
 I_g=midpoint(a,b,n,g)
 
 
 % exact integral of f
 % integration of f is 3*x+2*x^2
 
 exact_f=(3*b+2*b^2)-(3*a+2*a^2)
 
 % similarly integration of g is 3*x+2*x^2+2*x^3
 exact_g=(3*b+2*b^2+2*b^3)-(3*a+2*a^2+2*a^3)