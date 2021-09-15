function y=mySqrt(x,n)
  % mySqrt finds the square root of a number 
  %   y=mySqrt(x,n) finds square root of x with n iteration
  %
  %   mySqrt calculate the square root of a positive number to be positive 
  %   whereas square root of a negative number to be negative
  %
  %   See also sqrt 
  
 y0=x/2; %initial value of the square root of x
 y=y0; % if n=0 then square root of y will be y0
 counter=1; %counter for loop
 while counter<=n
   y=(y0+(x/y0))/2;
   
   y0=y;%update the value of y0
   counter=counter+1;
 end
  
end
