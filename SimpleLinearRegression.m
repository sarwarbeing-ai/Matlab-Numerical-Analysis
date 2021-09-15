% create a vector X to store the work
X=[100,110,225,275,375,550,750,825,950,1200,1400,1700];

% create the Y vector(oxygen consumption)
Y=[0.55,0.45,0.55,0.75,0.95,1.25,1.82,2.05,2.10,2.75,3.00,3.75];

% the linear regression eqution is y=ax+b
% where a is the slope and b is the inetercept

% the formula for calculating a and b are
% a=sum((x-mean(x))*(y-mean(y))/sum((x-mean(x))^2)
% the intercept is given by 
% b=mean(y)-a*mean(x)

% slope
% .* element by element multiplication
% ./ element by element division
a=sum((X-mean(X)).*(Y-mean(Y)))./sum((X-mean(X)).^2);

% intercept
b=mean(Y)-a*mean(X);

% predicted values of oxygen consumptions
y_pred=a*X+b;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plotting time
hold on % to have multiplt plots on the same figure
plot(X,Y,'.r','MarkerSize',7) % data points

% plot the predicted line
plot(X,y_pred,'-b','LineWidth',1.2)
xlabel('Work')
ylabel("Oxygen Consumption")
legend('Data Point','Fitted line','Location','northwest')
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calculate the R2 value
% formula:1-sum((y-y_pred)^2)/sum((y-mean(y))^2)
r2=1-sum((Y-y_pred).^2)/sum((Y-mean(Y)).^2);

% num2str converting number to string 
% just for printing purpose only
% [] this will concatenate both strings
disp(['The R2 value is ',num2str(r2)])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% the equation for the line

disp(['The equation of the line is y=',num2str(a),'x+',num2str(b)])
