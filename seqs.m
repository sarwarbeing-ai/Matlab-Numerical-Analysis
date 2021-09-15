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
    X(n+1)=X0^2+0.25; % indexing in Matlab starts at 1
    
    % update X0
    X0=X(n+1);
end

% display the values at n=0,5,10,15,
% since in Matlab indexing starts at 1
% there it is equivalent to give output for n=1,6,11,16,..

% get the values for n=0,5,10,15,...
for n=0:5:15
    % [] use to concatenate strings
    disp['n',num2str(n),X(n+1)]
end