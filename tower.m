clc;clear;close all;
% if you want you can take different data points x and p
% this method works as gradient descent to find the parameters of alpha and
% beta

x=[0.25,0.75,1.25,1.75,2.25];
p=[0.28,0.57,0.68,0.74,0.79];
a=[];erralpha=[];errbeta=[];Err=[];


% initial value of alpha and beta
alpha=1;
beta=1;
Niter=10; % no. of iterations ,you can change it if you want

for i=1:Niter
    F=alpha*(x.^-beta); % the function p
    DFalpha=x.^-beta; % derivative of p with respect to alpha
    
    % derivative of a^x with respect to x is ln(a)*a^x----formula
    % where ln is the natural logarithm
    DFbeta=alpha*log(x).*(x.^-beta); % derivative of p with respect to beta
    
    Z=[DFalpha' DFbeta']; % gradient array
    D=(p-F)'; % difference of p and the calculated value of p for particular alpha and beta
    
    DA=(Z'*Z)\(Z'*D); % changes for alpha and beta
    
    A=[alpha;beta]-DA;
    
    err0=abs((A(1)-alpha)/A(1))*100; % relative of alpha
    err1=abs((A(2)-beta)/A(2))*100; % relative of beta
    
    % upgrade the value of alpha and beta
    alpha=A(1);
    beta=A(2);
    
    a=[a A];
    erralpha=[erralpha err0]; % error vector for alpha
    errbeta=[errbeta err1]; % error vector for alpha
    
end

% first column  of a' corresponds to alpha
% second column of a' corresponds to beta
a' % array of changes for alpha and beta

% first row of Err corresponds to the error changes of alpha
% second row of Err corresponds to the error changes of beta
Err=[erralpha;errbeta] % error array for alpha and beta 