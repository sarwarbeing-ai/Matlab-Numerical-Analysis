n=7; % number of data points,the degree of the polynomial would be 6
x=[1.4 1.6 1.8 2.0 2.2 2.4 2.6]; % x values
y = [2.151 2.577 3.107 4.015 5.105 6.314 7.015]; % y values

% D is a matrix which will contain the Newton's divided difference values
% the matrix D is nothing but the forward difference of the Newton's Method
for i = 1:n
D(i,1) = y(i); % first column of the matrix D is nothing but the y-values
end

% fill the rest rows and columns of the matrix D
% D is a matrix of order 7*7
for i = 2:n
for j=2:i
D(i,j)=(D(i,j-1)-D(i-1,j-1))/(x(i) -x(i-j+1)); % forward difference
                                                
                                       
end
end
syms X; % symbolic variable
x0=X; 
fx0 =D(n,n);
for i = n-1:-1:1
fxo =fxo*(x0-x(i)) + D(i,i); % this is the Newton's polynomial
                             % here the formula is 
                             % p(x)=a1*
end
W=expand(fxo);
disp('NDD interpolating polynomial ')
disp(W)
