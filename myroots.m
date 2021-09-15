function r=myroots(n,a)
% myroots: Find all the nth roots of the complex number a
%
% Input Args:
%     n: positive integer specifying the nth roots
%     a: complex number whose nth roots are to be returned
%
% Output:
%    r: 1*n vector containing all the nth roots of a

% code goes here
% nth roots of a complex number are given as
% (m)^(1/n)*(cos((theta+2*k*pi)/n)+isin((theta+2*k*pi)/n))
% where k goes from 0 to n-1
% theta=arctan(x/y) where x is the real part of a and y is the imaginery 
% part a
% arctan is the inverse of tan
% theta is the angle made by the complex number a
% m is the magnitude of a
% the above formula has been derived using Demoivers theorem

r=zeros(1,n); % initialized r as zero vector

% calculate the  magnitude of a
m=abs(a);

x=real(a); % real part of a
y=imag(a); % imaginery part 

% calculate theta
theta=atan(x/y);

% use loop to fill the vector r
for k=1:n
    % j is the imaginery unit by default
    r(k)=(m)^(1/n)*(cos((theta+2*(k-1)*pi)/n)+j*sin((theta+2*(k-1)*pi)/n)); % k-1 taken k goes from 1 to n
end
end
