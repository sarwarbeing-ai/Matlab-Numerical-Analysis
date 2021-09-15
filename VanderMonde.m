clear;clc;close all;
x=linspace(-1,1,400)'; % vector with 400 points equally spaced ,' used to transpose the vector 

% The VanderMonde matrix whose first column is all ones
% second column x,third column x^2,4th column x^3,and so on
% Vander=[1,x,x^2,x^3,...]

% define the VanderMonde Factorization
first=ones(length(x),1); % matrix of size=length(x)*1
X=[first,x,x.^2,x.^3,x.^4]; %.^ element-wise power


% QR factorization
 [Q,R]=qr(X); % where Q is the unitary matrix and R is upper triangular matrix such that A=Q*R

% Here there is no need of R,so you can ignore it

for i=1:400
    subplot(200,200,i)
    plot(x,Q(:,i))
    pause(1)
end
