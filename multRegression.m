% NOte: Since I don't have the Pb2_data.mat file 
% therefore x2 and y2 will be constructed from the data you have provided
% in Chegg
% since the file that you have provided will take time to construct
% so first few rows will be used here
% Note: Use your data,here data constructed just to show the working of the
% program.
% Please do not use these the data intead use what you have
% the procedure would be same does not matter whether the dataset
% is small or large

% x2 and y2
x2=[0,0;0,0.5;0,1;0,1.5;0,2;0,2.5;0,3;0,3.5;0,4;0.5,0];
y2=[3.899342;2.7380778;6.624672;
    7.652658;5.826915;7.101935;8.750883;10.97465;11.29463;4.87329];
% Note: delete only x2 and y2 from your script and keep the rest codes

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% copy from here
% Copy all the below codes
% load P2b_data.mat  %uncomment this line 
figure; % create a figure
scatter3(x2(:,1),x2(:,2),y2)
xlabel("x1(1)")
ylabel("x1(2)")
zlabel("y1")
title("Problem 1b")
% the closed form solution for multiple linear regression is 
% c=inv(X'*X)*X'*y where c is a vector of coefficients,inv is the inverse
% X is a matrix whose first column consits of 1 only
% second column is x2(:,1),third column is x2(:,2)
% c=[a0,a1,a2] where a0 corresponds to bias term
% a1 corresponds to x2(:,1) and a2 corresponds to x2(:,2)
% and X' is the transpose of X

% Construct the matrix X
[m,~]=size(x2); % size of the matrix 
X=[ones(m,1),x2(:,1),x2(:,2)];

% coefficients
c=inv(X'*X)*X'*y2;

disp("The coefficients are ")
disp(c)


% calculate r2 value
% formula:1-sum((y2-pred_y2)^2)/sum((y2-mean(y2))^2

% predicted values for y2
y2_pred=X*c;

r2=1-sum((y2-y2_pred).^2)/sum((y2-mean(y2)).^2); % .^ element by element power
disp("The R^2 value is ")
disp(r2)