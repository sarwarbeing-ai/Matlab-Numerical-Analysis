% the fitted equation should be equal to y
% C1*cos(9*x)+C2*sin(9*x)+C3*cos(10*x)+C4*sin(10*x)+C5*cos(11*x)+C6*sin(11*x)=y

% Express the above equation in matrix form
% [cos(9*x),sin(9*x),cos(10*x),sin(10*x),cos(11*x),sin(11*x)]*C=y
% where C=[C1;C2;C3;C4;C5;C6] column vector of coefficients
% Here the coefficient matrix
% X=[cos(9*x),sin(9*x),cos(10*x),sin(10*x),cos(11*x),sin(11*x)] is a matrix
% of order length(x)*6 as x is a column vector,the matrix will have 6
% columns and length(x) number of rows

x=[-4*pi:0.01:4*pi].'; % x values ,it's a column vector as .' is the conjugate transpose operator

y=cos(1*x).*cos(10*x+pi/3); % y vector


% the coefficient matrix X
X=[cos(9*x),sin(9*x),cos(10*x),sin(10*x),cos(11*x),sin(11*x)];


% compute qr factorization of the coefficient matrix
[Q,R,P]=qr(X); % here P is a permutation matrix such that X*P=Q*R

% follow the procedures to fit a least square 
% 1. multiply Q' and y where Q' is the transpose of Q
%2. extract 6 rows and 6 columns from R as there are 6 columns only
% also 6 numbers from the vector obtained in step 1
% the matrix X has 6 independent  columns 
% In other words X is a matrix of rank 6

% 3. solve the system V*r=m_6 where V is a matrix obtained in step 2 and
% m_6 is a vector obtained in step 2

% 4. to get the solution solve the system C=P*r where r obtained in step 3

%step 1: get the vector m
m=Q'*y;

% step 2:
V=R(1:6,1:6);

% extract 6 numbers from m
m_6=m(1:6);

% step 3: solve V*r=m_6 using backslash operator 
r=V\m_6;

% step 4: get the solution
C=P*r % vector of coefficients such that C(1)=C1,C(2)=C2,...,C(6)=C6


% Extra code to show you the fitted curve
pred_y=X*C; % predicted value for y

hold on
plot(x,y,'.r','MarkerSize',12)
plot(x,pred,'-g') % green solid curve
legend('Data','Fitted curve')
hold off

