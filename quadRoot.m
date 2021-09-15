% second order equation has two solutions 
% solutions can be real or complex
% let ax^2+bx+c be a second order equation then 
% discriminant D is given by 
% D=b^2-4*a*c

% Rule1:
% if D<0 ,roots are  complex
% Rule2:
% if D>0, roots are real
% Rule3:
% if D=0 ,roots are equal and real

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% the equation from the question is 
% x^2-5*x+60

% s0,
a=1;
b=-5;
c=6;

% get D
D=b^2-4*a*c;

if D<0
    % get the complex roots
    root1=(-b+sqrt(D))/(2*a)
    root2=(-b-sqrt(D))/(2*a)
    
elseif D>0
    % get real roots
     root1=(-b+sqrt(D))/(2*a)
    root2=(-b-sqrt(D))/(2*a)
else
    % equal roots   
     root1=(-b+sqrt(D))/(2*a)
     root2=(-b-sqrt(D))/(2*a)
end