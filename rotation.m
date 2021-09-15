function [z,w]=rotation(x,y,theta)
  % x,y are real numbers
  % theta is an angle by which the vector [x,y]'
  % will be roatted counter clockwise
  % such that [z,w]=R(theat)*[x,y]'
  % where R(theta) is the rotation matrix
  
  
  % construct the vector with coordinates x and y
  vec_2d=[x,y]'; % here ' is the transpose symbol
  
  % now construct the rotation matrix
  ro_matrix=[cos(theta),-sin(theta);sin(theta),cos(theta)];
  
  % now rotate the vector vec_2d using the rotation matrix
  rotated_vec=ro_matrix*vec_2d;
  
  % now extract the z and w part from the vector rotated_vec
  z=rotated_vec(1);
  w=rotated_vec(2);
  
  
  % since pi=3.14.... therefore the value of w will not 
  % be exactly zero as due to loss of precision
  % it can happen for  z also.
  % let's use a tolerance of 10^-10
  % you can take different tolerance if you want but don't take 
  % very very small tolerance
  % for example the value of w is  1.2246e-16 without using any tolerance
  % if you take tol=10^-16 then the if condition will not be satisfied for w
  % that is if abs(w)<10^-16
  % w=0
  % end 
  % then the above conition will not be satisfied as abs(w)>10^-16
  
  tol=10^-10;
  if abs(z)<tol
    z=0;
  end
  
  if abs(w)<tol
    w=0;
    end  
end
