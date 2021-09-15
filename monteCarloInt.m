% part b))
% approximate  integral with a=1 and b=4
a=1;
b=4;
I=oneoverln(a,b);
disp('The integral of 1/log(x) over [1,4] is '),I

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I=expoverx(a,b);
disp('The integral of exp(-x)/x over [1,4] is '),I



% part c))
function ans=expoverx(a,b)
total=0;
trials=1000;
for i=1:trials
    x=a+(b-a)*rand;
    total=total+(exp(-x)/x);
end

ans=(b-a)*total/trials; 
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% part a and b))
function ans=oneoverln(a,b)
total=0;
trials=1000;
% x=1+3*rand; % mistake 1

% Reason: when calling this function there will be only one x value for
% which the integral will be evaluated
% it will behave like a constant
% 1/log(x) will be constants for all trials
% it will defeat the purpose of approximating the integral as this will not be
% a good approximation as monte carlo integration uses the formula
% (b-a)*sum(f(xi))/N where xi draws uniformly on [a,b] 
% The integration would be either heavily underestimate or overestimate
% the integration is nothing but sum of all the areas of all the rectangles
% obtained in partitioning the interval [a,b]

% solution:
% put x inside the loop so that every time loop runs the new value of x
% will be obtained

% Second problem:
% 1+3*rand will draw random number in the range [1,4) which is not true
% as the interval is [a,b] where a and b may not be 1 and 4 respectively
% to draw random number in the range [a,b] use a+(b-a)*rand
% as rand draw random nuber in the range [0,1)

for i=1:trials
    x=a+(b-a)*rand;
    total=total+(1\log(x));
end
%ans=total/trials; % mistake 2
                   % Reason:
                  % You have to multiply total by h=(b-a)
                   % as integration is nothing but sum of all the
                   % rectangle's area where reactange whose height is 
                   % 1/log(x) and beadth is (b-a) a universal one
                   
ans=(b-a)*total/trials; 
end




