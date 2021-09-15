% Inf is is the positive infinity
% similarly -Inf is the negative infinity

% NaN is "Not A Number" ,Matlab output this when a number is undefined
% eg: 0/0 will be treated as NaN
% Also you can use NaN for missing value


% i/j in Matlab by default are the imaginary units  for complex number
% to reperesent complex number in Matlab use 1i/1j
% eg: 1+1i*2 ,this will be a complex of the form 1+2i in mathetical way

% create variables a,b,c,d,e,f,g
a=1/0;
b=log(0);
c=exp(100); % exponential value at 100(e^100)
d=exp(1000);
e=2^200;
f=10*Inf; % Inf is the positive infinity

g=10/Inf;

% Note: isinf function checks whether a number is positive
% Infinity or negative Inifinity i.e it returns 1(true) if the number 
% is positive infinity or negative infinity otherwise it returns
% 0(false)

% first store the results of isinf in T1,T2,T3,T4,T5,T6,T7
T1=isinf(a);
T2=isinf(b);
T3=isinf(c);
T4=isinf(d);
T5=isinf(e);
T6=isinf(f);
T7=isinf(g);

disp("----------------Part 1--------------------------")
% now deterime if they are infinity or not
% if conditional will only be executed if T1 is 1 (example)
if T1
    disp("The variable a is repesented by the  special variable Inf")
end

if T2
    disp("The variable b is repesented by the special variable Inf")
end
if T3
    disp("The variable c is repesented by the special variable Inf")
end
if T4
    disp("The variable d is repesented by the special variable Inf")
end
if T5
    disp("The variable e is repesented by the special variable Inf")
end
if T6
    disp("The variable f is repesented by the special variable Inf")
end
if T7
    disp("The variable g is repesented by the special variable Inf")
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('--------------------Part 2-------------------------')
% part 2))
a=Inf-Inf;
b=0*Inf;
c=0/0; 
d=2/0;
e=Inf/Inf;

% isnan function returns 1 if a number is "Not A Number" i.e undefined
% otherwise 0

% first store the results of isnan T1,T2,T3,T4,T5,T6,T7
T1=isnan(a);
T2=isnan(b);
T3=isnan(c);
T4=isnan(d);
T5=isnan(e);

% now deterime if they are "not a number" or not
% if conditional will only be executed if T1 is 1 (example)
if T1
    disp("The variable a is repesented by the special variable NaN")
end

if T2
    disp("The variable b is repesented by the special variable NaN")
end
if T3
    disp("The variable c is repesented by the special variable NaN")
end
if T4
    disp("The variable d is repesented by the special variable NaN")
end
if T5
    disp("The variable e is repesented by the special variable NaN")
end


