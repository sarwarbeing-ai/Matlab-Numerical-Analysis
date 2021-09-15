% least squares

n = 249;

phi = @(x) 2*x+1;

xs = rand(1,n+1);

ys = phi(xs) + 0.1*randn(1,n+1);

% compute the 4 entries of the 2x2 matrix to be inverted in the normal equation
% the normal equation is inv((X'X))*(X'y)
% here inv is the inverse and X' is the transpose of X
% M=X'*X
% y=X'*ys';

% X=[ones(n+1,1),xs']; % here the first column is ones of length n+1
% second column is xs
M11 =dot(ones(1,1+n),ones(n+1,1)); % dot product

M12 =dot(ones(1,1+n),xs);

M21 =dot(xs,ones(1,1+n));

M22 =dot(xs,xs);

M = [M11, M12; M21, M22];

% compute the right-hand-side of the normal equation

y0 =dot(ones(1,n+1),ys);

y1 =dot(xs,ys);

y = [y0; y1];

% solve for (a0,a1), the least-squares coefficients of the line a0 + a1 x
% a0M11+a1M12=y0
% a0M21+a1M22=y1

% find the inverse of the matrix M
M_inv=inv(M);
a0 =dot(M_inv(1,:),y);

a1 =dot(M_inv(2,:),y);

a=[a0; a1];

linreg = @(x) a0 + a1*x;

xplot = linspace(0,1,1000);

figure; hold on

plot(xs,ys,'.')

plot(xplot,linreg(xplot),'r')