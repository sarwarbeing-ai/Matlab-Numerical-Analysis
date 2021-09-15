% Temperature data
x=[10,50,75,107,120,180,220]'; % here ' is the transpose operator ,
                               % used to convert from row to column vector
                                                             
% tensile strength
y=[130,128,126,123,120,106,88]'; 

% in order to fit y=mx^2+nx+c you can use normal equation formula to
% solve for m,n,c
% normal equation formula
% coef=inv(X'*X)*X'*y; % where X is a matrix whose first column is 
                       % x^2 ,second column is x,and third column is 1's
                       % coef will be a vector such that
                       % coef(1)=m,coef(2)=n,coef(3)=c
                       % inv is the inverse
                                             
% create the matrix X
X=[x.^2 x ones(length(x),1)]; % .^ element by element power as x is a column vector

% you can use backslash operator from Matlab to solve the normal equation 
% as backslash operator is more efficient than inv function
coef=(X'*X)\(X'*y);

% extract the coefficients of the polynomial y=mx^2+nx+c
m=coef(1);
n=coef(2);
c=coef(3);

% predicted value for y(tensile strength)
y_pred=m*x.^2+n*x+c;

% R^2 square value
R2=1-sum((y-y_pred).^2)/sum((y-mean(y)).^2)

% plotting time
hold on
plot(x,y,'.b','MarkerSize',16) % scatter plot of the data

plot(x,y_pred,'-r') % fitted red solid line
xlabel("Temperature[C]")
ylabel("Tensile Strength[MPa]")
title("Temperature vs Tensile Strength")

% annotate the graphs
legend('Data','Fitted curve')
hold off


