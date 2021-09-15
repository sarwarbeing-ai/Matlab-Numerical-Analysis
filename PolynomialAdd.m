clc;clear; % clear command window,workspce
% demosntration
p1=[8,10,0,-5,13,-4,-2];
p2=[4,0,7,0,6];

% call the function
p=polyadd(p1,p2,'add');
disp("The polynomial coefficients obtained in addition")
disp(p)

p_=polyadd(p1,p2,'sub');
disp("The polynomial coefficients obtained in subtraction")
disp(p_)

function p=polyadd(p1,p2,operation)
%p1,p2 are the coefficients of the two polynomials respectively
% from heigher order to lower order
% eg: [1,2,3] then 1 is the coefficient of x^2,2 is the coefficient of x
% and 3 is the coefficient of x^0 that is constant
% operation is of kind add or subtract

% first check which one is shorter p1 or p2
if length(p1)<length(p2)
    padd=zeros(1,length(p2)-length(p1)); % padd zeros to  p1
    p1=[padd p1]; % change p1
else
    % padd p2
    padd=zeros(1,length(p1)-length(p2));
    p2=[padd p2];
    
end
if operation=='add'
    p=p1+p2;
else
    % subtraction
    p=p1-p2;
    
end
end

