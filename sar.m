%let's first define the function called slope:

function s = slope(x,y)
s=0;
s=sin(4*x*y)/(x**2 + y**2 - 2*x + 2*y + Â 3);
end;



%x = -3:0.1:3;Â Â % this will create a vector of values from -3 to 3 with 0.1 spacing
%y = -4:0.1:4;Â Â % this will create a vector of values from -4 to 4 with 0.1 spacing

function [x_val,y_val,max] = maxSlopeCoordinates()

max=-Inf;
x_val=0;
y_val=0;

for x=-3:0.1:3
Â  Â  for y=-4:0.1:4
Â  Â  Â  Â  Â s=slope(x,y);
Â  Â  Â  Â  if s>max
Â  Â  Â  Â  Â  Â  Â max=s;
Â  Â  Â  Â  Â  Â  Â x_val=x;
Â  Â  Â  Â  Â  Â  Â y_val=y;
Â  Â  Â  end % end of if condition
Â  Â endÂ  Â % end of second for loop

endÂ  Â  % endÂ  of first for loop

endÂ  %end of the function