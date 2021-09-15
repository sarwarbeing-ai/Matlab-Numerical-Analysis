N=27;

% since the relation is a recurrence one 
% therefore you need to have initial value
% that is X0
% create an empty vector X to store the values for n=0,1,2,3,...,N
X=[];

X0=0; % if you want you can change it

% 0:N will create a vector with step size 1
% i.e it will return 0,1,2,3,..upto N 

for n=0:N
    % Xn+1
    X(n+1)=X0^2+0.25; % indexing in Matlab starts at 1
    
    % update X0
    X0=X(n+1);
end

% display the values at n=0,5,10,15,
% i.e display X1,X6,X11,..,
% therefore it is equivalent to give output for n=1,6,11,16,..

% get the values for n=0,5,10,15,...
% 0:5:N will return vector with step size 5
for n=0:5:N
    % [] use to concatenate strings
    disp(['X',num2str(n+1),' = ',num2str(X(n+1))])
end