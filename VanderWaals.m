clear;clc;close all;
% the Van der waals equation for volume V
% (p+n^2*a/V^2)(V-nb)=nRT
% in order to solve for V(volume)
% you need to find the root of the following equation
% (p+n^2*a/V^2)(V-nb)-nRT=0 within the interval (0,1) and with 5 iterations
% after finding the value of V 
% find v=V/n
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% define all the given values
n=5.00;
%p=40.0;
%T=323; % in kelvin
%a=3.610;
%b=0.0429;
%R=0.08205746;


% defined the above equation using function handle @
f=@(V) (40.0+(5.00^2)*3.610/V^2)*(V-5*0.0429)-5*0.08205746*323;



% define the lower limit and upper limit of the interval
lr=0;
ur=1;

Niter=5; % no. of iterations

% bisection method
for i=1:Niter
    % find the middle point of the interval
    c=(lr+ur)/2;
    
    % get the new interval
    if sign(f(c)) ==sign(f(lr)) % check the sign
        lr=c;
    else
        ur=c;
        
    end
    
end


% the volume is given by 
V=c; % where c got from the above algorithm after the 5th iteration

% now find the partial molar volume
v=V/n;
fprintf("The partial molar volume is %d Litr^3",v)


