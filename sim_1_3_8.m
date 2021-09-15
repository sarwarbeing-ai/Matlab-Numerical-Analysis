% Demonstration
a=0;
b=10;
% define the integral using function handle @
fun=@(x) (1+x.^2-sin(x))./(cos(x)+x);

% take many values of N
N=2:300;

% here part 4)) is applied

n=1; % single application
I_1_3=simpson_1_3(fun,a,b,1400);
I_3_8=simpson_3_8(fun,a,b,1400);

err=abs((I_1_3-I_3_8)/I_3_8);

% single application
if err<10^-10
    fprintf('Number of application for both rule needed is %d\n',1)
    fprintf("Number of points needed for rule is %d\n",1+1)
else
    % more than single application
    flag=0; % flag to break the outer loop
    for n1=N
        for n2=N
            I_1_3=simpson_1_3(fun,a,b,n1);
            
            I_3_8=simpson_3_8(fun,a,b,n2);

             err=abs((I_1_3-I_3_8)/I_3_8);
             
             if err<10^-10
                 fprintf('Number of application for 1/3 rule needed is %d\n',n1)
                 fprintf('Number of application for 3/8 rule needed is %d\n',n2)

                  fprintf("Number of points needed for rule 1/3 is %d\n",n1+1)
                  fprintf("Number of points needed for rule 3/8 is %d\n",n2+1)
                  flag=1; % change flag to 1
                  break; % break the nested loop
                 
             end
        end
        if flag
            break; % break the outer loop
        end
    end
end


% this function will work for both single application
% and more than single applications
function I=simpson_1_3(fun,a,b,N)
% Note: if N=1 or 2 this function will be a single
% application(simple simpson 1/3 rule)
% if N>2 then this function will be composite simpson's 1/3 rule
%(more than single application)
% fun function to be integrated and it should be written with point-wise
% calculation
% a  lower limit of integration
% b  upper limit of integration
% N  number of subintervals
%output:
% I  value of the integral

if N<1
    error('N must be greater than equal to 1')
end
if (N==1) || (N==2)
    I=(b-a)*(fun(a)+4*fun((a+b)/2)+fun(b))/6; % simple simpson 1/3 rule
else
    % step size
    h=(b-a)/N;

    % the vector of end points of all subintervals
    x=a:h:b;


    % function value at x
    fval=fun(x);
     
   %calculate all the odd indices
   % index 1 and index length(x) are excluded as at index 1 a is located
   % at index length(x) b is located
   odd=3:2:(length(x)-1); % with step size 2
   
   % calculate all the even indices
   even=2:2:(length(x)-1);
   

    % integral value
    % composite simpson's 1/3 rule
    % fval(length(x)) is the value at x=b
    % fval(1) is the value at x=a
    
    I=h*(fval(1)+2*sum(fval(even))+4*sum(fval(odd))+fval(length(x)))/3; 
end

end


% this function will work for both single application
% and more than single applications
function I=simpson_3_8(fun,a,b,N)
% Note: if N=1 or 2 this function will be a single
% application(simple simpson 3/8 rule)
% if N>2 then this function will be composite simpson's 3/8 rule
%(more than single application)
% fun function to be integrated and it should be written with point-wise
% calculation
% a  lower limit of integration
% b  upper limit of integration
% N  number of subintervals
%output:
% I  value of the integral

if N<1
    error('N must be greater than equal to 1')
end
if (N==1) || (N==2)
    I=(b-a)*(fun(a)+3*fun((2*a+b)/3)+3*fun((a+2*b)/3)+fun(b))/8; % simple simpson 3/8 rule
else
    % step size
    h=(b-a)/N;

    % the vector of end points of all subintervals
    x=a:h:b;

    
    % function value at x
    fval=fun(x);
    
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
    I=3*h*(fval(1)+2*sum(fval(mult_3))+3*sum(fval(not_mult_3))+fval(length(x)))/8; 
end

end

