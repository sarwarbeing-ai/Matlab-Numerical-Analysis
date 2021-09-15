f=@(x) 1./x;
a=1;
b=2;
n=3;
    
[I,err]=romberg(f,a,b,n)

function [I,err]=romberg(f,a,b,n)
    % f is the continous function
    % a and b are the lower and upper limits of the integration of f
    % n is the number of subintervals in composite Trapezoidal
    
    %output:
    % I is the required integration of f
    % err is the relative error based on best two estimate
    
    R=zeros(n,n); % initialize R to store integration
    h=b-a; % step size
    
   R(1,1)=h*(f(a)+f(b))/2; % for n=1      
   if n>1
    for i=1:n
        sum=0;
        if i==1
            R(i,1)=h*(f(a)+f(b))/2; % simple trapezoidal rule
        else
            
            % composite trapezoidal rule
            for k=1:2^(i-1)-1
                sum=sum+f(a+k*h)+f(b);
            end
        
            sum=h*(2*sum+f(a))/2;
             
            R(i,1)=sum;
        end
        
        
         % Richardson Extrapolation
         for j=2:i
             R(i,j)=R(i,j-1)+(R(i,j-1)-R(i-1,j-1))/((4^j)-1);
         end
     end
        
        I=R(n,n); % required integration
        err=abs((R(n,n-1)-R(n,n))/R(n,n));
   end
   disp(R)
end

   