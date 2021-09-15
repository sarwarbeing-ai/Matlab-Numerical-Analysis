% create a vector t
% vector t created separately as 
% if you use 0:0.2:2*pi the end point will be different
% from 2*pi so the value of cos(2pi) will be different
% from cos(end point of the vector)
t=0:0.2:1; % step size 0.2

% now create the vector x
x=2*pi*t; 

% get the vector y
y=cos(x);
ymax=y(end); % last element,the value of cos(2pi)

disp('The value of cos(2*pi)')
disp(ymax)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xmax=2*pi;

% intialize the vector s and z as empty vector
s=[];
z=[];

% now store the value of s1=0 and z1=0 in s and z respectively
s(1)=0;
z(1)=0;


% to calculate the other values of s and z use a for loop
% loop goes from 1 to 10 
for k=1:10
    z(k+1)=k; % the next value of z
    
    s(k+1)=s(k)+(-1)^(k-1)*xmax^(2*(k-1))/factorial(2*(k-1));
    
end

% print the final value of the partial sum
disp('The final value of the partial sum')
disp(s(end))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plotting time
subplot(1,2,1) % with 1 row and 2 columns third is the index of the axe
plot(x,y,'-r')
xlabel("x")
ylabel("cos(x)")
title('cosine plot')

% second plot
subplot(1,2,2)
plot(z,s,'-g')
xlabel("number of terms")
ylabel("partial sum")