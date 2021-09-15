clear;clc;
format long % in order to have more digits after decimal point
Fun=@(x) cos(sqrt(exp(x/3)+x/8)-pi/4); % define the integrand as function handle
a=2; % lower limit
b=7; % upper limit

% Calculate integral using Simpson's 3/8 rule
    n=100; % number of number sub-intervals needed in simpson's rule
           % you can take this different but take always a large value like
           % 150,300,etc
    
    % step size
    h=(b-a)/n;

    % the vector of end points of all subintervals
    x=a:h:b;

   
    % function value at the vector x
    fval=Fun(x);
   
   
    % composite Simpson's 3/8 rule goes here
   
   %calculate all the indices multiple of 3
   % index=1 and index=length(x) are excluded as at index=1 
   % and index=length(x) will be used separately 
   % see the calculation for integral at the end
   mult_3=3:3:(length(x)-1); % with step size 3
  
   % calculate all the indices not multiple of 3
   % first get all the indices
   indices=2:(length(x)-1); % index=1 and index=length(x) are excluded
                            % it will be clear below why they are excluded
  
   % get a logical vector such that element in indices is a member of
   % mult_3
   indices_member_3=ismember(indices,mult_3);
  
   % taking negation of indices_member_3 is nothing but
   % a logical vector corresponds to elements that are not multiple of
   % three
   indices_not_3=~indices_member_3;
  
   % get all the indices not multiple of 3
   not_mult_3=indices(indices_not_3);
  
  

    % integral value
    % composite simpson's 3/8 rule
    % fval(length(x)) is the value at x=b
    % fval(1) is the value at x=a
    integral=3*h*(fval(1)+2*sum(fval(mult_3))+3*sum(fval(not_mult_3))+fval(length(x)))/8;
    
    
    % display the integral value with 7 decimal places
    disp('I3=')
    disp(round(integral,7)) % rounded to 7 decimal places
    