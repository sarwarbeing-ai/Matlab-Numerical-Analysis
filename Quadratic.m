% demonstration
abc=[1,10,-24];
[rootCondition,rootValues]=quadraticSolver(abc);
disp("The rootCondition is")
disp(rootCondition)
disp("Root values :")
disp(rootValues)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% another example
abc=[1,-4,4];
[rootCondition,rootValues]=quadraticSolver(abc);
disp("The rootCondition is")
disp(rootCondition)
disp("Root values :")
disp(rootValues)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% one more example
abc=[1,0,2];
[rootCondition,rootValues]=quadraticSolver(abc);
disp("The rootCondition is")
disp(rootCondition)
disp("Root values :")
disp(rootValues)

function [rootCondition,rootValues]=quadraticSolver(abc)
% abc is a three element row vector

% extract the values of a,b,and c
a=abc(1);
b=abc(2);
c=abc(3);

% check for the root condition
D=b^2-4*a*c; % discriminant

% check if the roots are real and distinct
if D>0
     % convert 2 into uint8 datatype and then assign
     % to the variable rootCondition
    rootCondition=uint8(2);
    
% check if the roots are equal
elseif D==0
    rootCondition=uint8(1);
else
    % complex roots
    rootCondition=uint8(0);
end

% find the root values
% check if the rootCondition=2
if rootCondition==uint8(2)
    rootValues(1)=(-b+sqrt(D))/(2*a); % first root
    rootValues(2)=(-b-sqrt(D))/(2*a); % second root
    
    % sort the values in ascending order
    rootValues=sort(rootValues); % sort in ascending order
    
% check if the roots are equal    
elseif rootCondition==uint8(1)
    rootValues(1)=(-b+sqrt(D))/(2*a); % first root
    rootValues(2)=(-b-sqrt(D))/(2*a); % second root
else
    % complex roots
    rootValues='complex roots';
end
end
