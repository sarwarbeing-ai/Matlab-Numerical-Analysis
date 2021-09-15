% first create a .txt file as the file is not available
% I will show you how to use importdata() function

% create  vectors x and y
% x is a vector of uniformly distributed random points
% in the interval [-3,4)
% Since rand fuction returns uniformly distributed random  number
% in the interval [0,1)
% in order to draw uniform random points in the interval [a,b)
% you need to use the following formula
% formula:
% a+(b-a)*rand(1,N) N data points
x=-3+(4+3)*rand(1,100); % total 100 data points

% similarly create y vector
y=2*x.^3-3*x.^2+12;

% add some random noise to the vector y 
% it is just for fitting purpose only
y=y+rand(1,100);

% Note : use your own data 
% these have been constructed to demonbstrate the usage of importdata()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% create the .txt file

% create a matrix mat
mat=[x;y];
fid = fopen( 'xy_data.txt', 'w' );

% save the matrix as text file
dlmwrite('xy_data.txt',mat);
fclose(fid); % close the file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part A))

data=importdata('xy_data.txt'); % import the data into a matrix

% extract x-values
x=data(1,:); % first row

% extract the y data
y=data(2,:); % second row

% plot
figure; % figure1
plot(x,y,'.','Marker','o','Color','k')
xlabel('x')
ylabel('y')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% part B))
% fit the 7th order polynomial
% p_7 a vector of coefficients of the 7th order polynomial
% in the order an,an-1,an-2,...,a0
p_7=polyfit(x,y,7); 

% plot the data with increased resolution of x(increased step size)




