% define the system as function
% y(1)=A,y(2)=B,y(3)=C
% define a parameterized function with extra paramters
% k1,k2,k3
f = @(t,y,k1,k2,k3) [-k1*y(1)*y(2)+k2*y(3);
-k1*y(1)*y(2)+k2*y(3)-k3*y(2)*y(3);
k1*y(1)*y(2)-k2*y(3)-k3*y(2)*y(3)];

k1=0.15;
k2=0.1;
tspan=[0 1];
y0=[1;2.2;0];
k3=2:2:100; % vector from 2 to 100 with step size 2

% initialize Cmax,Acorr,Bcorr,tcorr with zeros
Acorr=zeros(length(k3),1);
Bcorr=zeros(length(k3),1);
Cmax=zeros(length(k3),1);
tcorr=zeros(length(k3),1);

% create options for ode23s
opts=odeset('RelTol',10^-6,'AbsTol',10^-6);

% use loop 
for i=1:length(k3)
    % define another which acts as a wrapper of the above function
    stiff=@(t,y) f(t,y,k1,k2,k3(i));
    
    % get the solution
    [t,y]=ode23s(stiff,tspan,y0,opts);
    
    % extract the vectors A,B,C
    A=y(:,1);
    B=y(:,2);
    C=y(:,3);
    
    % get the max of C
    max_C=max(C);
    
    % find the index of the maximum value in C
    idx=find(C==max_C);
    
    % get the value of max value of C,corresponding value of A,B,and t
    Cmax(i)=C(idx);
    Acorr(i)=A(idx);
    Bcorr(i)=B(idx);
    tcorr(i)=t(idx);
    
end

% construct the A7.dat for Cmax,Acorr,Bcorr
file=fopen('A7.dat','w');

% create a matrix with data Cmax,Acorr,Bcorr
mat=[Cmax,Acorr,Bcorr];

% write matrix mat  to file
fprintf(file,'%f %f %f\n',mat.');

% close the file
fclose(file);


% construct A10.dat for tcorr
file1=fopen('A10.dat','w');
% write mat to file1
fprintf(file1,'%f \n',tcorr);
fclose(file1);

