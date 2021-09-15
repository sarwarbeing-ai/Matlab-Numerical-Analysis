x=1:5;
y=[2.1,3.9,5.1,6.3,8.2];

% plot the data to get a guess
% about the relation between input and the 
% output
% the relation will be almost linear
plot(x,y,'.r')

% fit a simple linear regression model
% y=a*x+b
% the formula to get the estimated vue of a
% a=sum((x-mean(x))*(y-mean(y))/sum((x-mean(x))^2
% b=mean(y)-a*mean(x)

% .* element by element multiplication
% .^ element by element power
a=sum((x-mean(x)).*(y-mean(y)))/sum((x-mean(x)).^2);


b=mean(y)-a*mean(x);

% mathematical relationship
disp('Mathematical Relation:')
disp(['y=',num2str(b),'+',num2str(a),'x'])

% residual norm
pred=a*x+b;% predicted value of y
rnorm=norm(pred-y);
disp('Residual norm:')
disp(rnorm)

hold on % to multiple graphs on the same plot

plot(x,pred,'-g')

legend('data','fitted curve')
hold off
