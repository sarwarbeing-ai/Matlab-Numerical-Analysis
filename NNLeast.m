

% Question 3))
% re-write the system of equations as follows
%  
% f(x,y,z)=x^2+y^2+z^2-1=0
% g(x,y,z)=x^2+z^3-0.25=0
% h(x,y,z)=x^2+y^2-4*x=0

% solution:
% 1.get the jacobian of the system
% J(x1,x2)=[df/dx,df/dy,df/dz;dg/dx,dg/dy,dg/dz;dh/dx,dh/dy,dh/dz] where d is the 
% partial derivative

% 2. define the Jacobian as function handle
% out is a vector such that out(1)=x,out(2)=y,out(3)=z
J=@(out) [2*out(1),2*out(2),2*out(3);2*out(1),0,3*out(3).^2;2*out(1)-4,2*out(2),0];  % defined as matrix

% 3. define the system as function handle
f=@(out) [out(1).^2+out(2).^2+out(3).^2-1;out(1).^2+out(3).^3-0.25;out(1).^2+out(2).^2-4*out(1)]; % defined as a column vector

% initial solution
out0=[1,1,1]'; 


tol=10^-4; % tolernace of correct to four decimal digits

% infinite  while loop
while 1
    
    % next solution
    next=out0-inv(J(out0))*f(out0); % Newton's formula, inv is the inverse of
                                  % the Jacobian
    
    % check for the tolerance
    % Euclidean norm
    if norm(next-out0)<=tol
        % solution
        sol=out0;
        break % break the loop
    else
        % update the initial guess
        out0=next;
    end
end

disp('The solution vector is ')
disp(sol)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Question 4))

% rate ∝ pressure^a
% rate=b*pressure^a where a is the exponent and b is a proportionality
% constant
% Now linearize the equation to make it a linear equation to fit a least
% square method
% take log both sides
% r is the rate and p is the pressure
% log(r)=log(b)+a*log(p) as log(xy)=log(x)+log(y) and log(x^n)=n*log(x)

% so let log(b)=c
% then y=c+a*x where x=log(p) and y=log(r)
% this is a simple linear regression problem,
% in order to get the solution for a and c ,you need to fit a least square
% method

r=[94,118,147,180,230]; % rate value
p=[10,16,25,40,60]; % pressure


% now transformed r and p by taking natural logarithm
x=log(p);
y=log(r);


% The least square solution is given below
% formula:
% a=sum((x-mean(x))*(y-mean(y))/sum((x-mean(x))^2) ,a is the slope of the line
% c+ax

% c=mean(y)-a*mean(x)

a=sum((x-mean(x)).*(y-mean(y)))/sum((x-mean(x)).^2); % .* is the element by element
                                                % multiplication and .^ is
                                                % the element by element
                                                % power
                                                
c=mean(y)-a*mean(x);


% now get proportionality constant
% since log(b)=c ,therefore b=exp(c)
b=exp(c);


% display the exponent and proportionality constant value
disp(['Exponent=',num2str(a),' Proportionality=',num2str(b)])



% part 4.2))
p=50;
r=b*p^a;

disp(['rate=',num2str(r)])



                                                