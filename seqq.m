N=3*1*9*2; % (student ID=19442192) % change this ID as your's

% note:
% to run this recurrence relation you need a initial value for x
% i.e at n=0 
x0=0.01; % if you want,you can change it

X=zeros(1,N+1); % initialize with zeros, solution vector


% indexing in matlab starts from 1
for n=0:N
        X(n+1)=x0^2+0.25;
        
        % update x0
        x0=X(n+1);
    
end

% print the solution for n=0,5,10,15,...
% 0:5:N this will return  vector 0,5,10,15,..,
indices_5=0:5:N; % step size 5

for n=indices_5
    % [] use to concatenate strings
    % num2str - convert number into string
    % int2str -convert integer into string
    disp(['X',int2str(n+1),' = ',num2str(X(n+1))]) % indexing in matlab starts at 1
end

