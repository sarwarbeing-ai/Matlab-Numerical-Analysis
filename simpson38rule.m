Fun=@(x) sin(x).^2;
a=0;
b=pi;

I_sim=Simpsons38(Fun,a,b);

I_quad=quad(Fun,a,b);

%[] used to concatenate strings
disp([' Integral value using Simpsons 3/8 rule is ',num2str(I_sim)]);
disp([' Integral value using quad function is ',num2str(I_quad)]);

disp(['Exact=',num2str(pi/2)])



function I=Simpsons38(Fun,a,b)
    % first get the integral value on three subintervals
    
    % step size
    h=(b-a)/3; % for three evenly subintervals

    % the vector of end points of all subintervals
    x=a:h:b;

    
    % function value at x
    fval=Fun(x);
    
    
    % composite Simpson's 3/8 rule goes here
    
   %calculate all the indices multiple of 3
   % index 1 and index length(x) are excluded as at index 1 a is located
   % at index length(x) b is located
   mult_3=3:3:(length(x)-1); % with step size 3
   
   % calculate all the indices not multiple of 3
   % first get all the indices
   indices=2:(length(x)-1); % 1 and length(x) are excluded
   
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
    
    
     
    % now use infinite while loop to get the integral value
    % within 0.1%=0.001
    
    Nintervals=3; % initially it was 3
    
    while 1
        
     % doubled the Nintervals
     Nintervals=2*Nintervals;
        
    % get the next integral value
        
     
    h=(b-a)/Nintervals; % step size

    % the vector of end points of all subintervals
    x=a:h:b;

    
    % function value at x
    fval=Fun(x);
    
    
    % composite Simpson's 3/8 rule goes here
    
   %calculate all the indices multiple of 3
   % index 1 and index length(x) are excluded as at index 1 a is located
   % at index length(x) b is located
   mult_3=3:3:(length(x)-1); % with step size 3
   
   % calculate all the indices not multiple of 3
   % first get all the indices
   indices=2:(length(x)-1); % 1 and length(x) are excluded
   
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
    next_integral=3*h*(fval(1)+2*sum(fval(mult_3))+3*sum(fval(not_mult_3))+fval(length(x)))/8;
    
    % check if absolute difference between integral and next_integral is within
    % 0.001
    
    if abs(next_integral-integral)<0.001
        I=integral; % return the integral
        break % break the while loop
    else
        integral=next_integral; % update the integral
        
    end
    end
end

    
        