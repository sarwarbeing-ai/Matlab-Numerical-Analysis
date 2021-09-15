%% part b))

function [eigv,eigvec]=powerWithScalling(A,x0,tol)
  % A is the matrix
  % x0 is the iniatial guess for eigenvector
  % tol is the relative error
  % with scalling the formula is 
  % x_k=A*x_k-1/norm(A*x_k-1) where k is the iteration number
  % default value of tol is 1%=0.01
  % the eigenvalue is obtained by the Rayleigh qoutient
  % eigv=dot(A*x,x)/dot(x,x)
  
  % if the no. of argument is less than 1 stop the execution of the program and 
  % print some message
  
    if nargin<1 
      error("at least one argument is needed")
    end
    if nargin<2 
      x0=rand(length(A),1); % random vector from standard uniform distribution
    end
    if nargin<3
      tol=0.01;
    end
    
   
   old_eigvec=x0; % old eigen vector value
   N=1; % initial value of the iteration
 
    while true
      new_eigvec1=A*old_eigvec; % matrix multiplication
      
      % using scalling
      new_eigvec=new_eigvec1/norm(new_eigvec1); % normalized eigenvector 
      
      % Rayleigh qoutient
      new_eigv=dot(A*new_eigvec,new_eigvec)/dot(new_eigvec,new_eigvec);
      old_eigv=dot(A*old_eigvec,old_eigvec)/dot(old_eigvec,old_eigvec);
      
      if abs((new_eigv-old_eigv)/new_eigv)<tol
        eigv=new_eigv;
        eigvec=new_eigvec;
        break % break out of the while loop
      end
      
      %otherwise do the following
      
      old_eigvec=new_eigvec;
      N=N+1;
      
      
  
end
end

