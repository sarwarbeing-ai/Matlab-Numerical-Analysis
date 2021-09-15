% create an even spaced row vector A
% sytax: start:step:end ,this method include both ends points
A=0:0.5:50;
disp("The row vector A is")
disp(A)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% create row vector B with 80 evenly spaced points
% here you can't use the above syntax as step is unknown
% here so instead use the function linspace
% linspace(start,end,n) where n is the number of points
B=linspace(0,pi/2,80);
disp("The row vector B is ")
disp(B)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% create row a vcetor that is an unsigned 8-bit integer data type
C=200:-5:0; % always remember the starting point and ending point

% convert the C into unsigned 8-bit integer data type
C=uint8(C);

disp("The row vector C is ")
disp(C)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Note: use the syntax start:step:end when step size is known
% otherwise use linpsace(start,end,n) if step size is not known

