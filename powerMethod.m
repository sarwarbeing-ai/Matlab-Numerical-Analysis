% construct the matrix A
A=[3,-1,0;-1,2,-1;0,-1,3];

% initial guess of the eigenvector
x0=[1,1,1]';

tol=10^-3;

iter=0;
% use while loop to iterate until tolerance satisfied
while 1
    next_vec=A*x0; % get the next eigenvector
    
    % normalize next_vec so that largest element is 1 
    next_vec=next_vec/max(abs(next_vec));
    
    % get the eigenvalue using Rayleigh Qoutient
    lambda=dot(x0,(A*x0))/dot(x0,x0); % dot is the dot product
    
    % check for the tolerance
    if max(abs((next_vec-lambda*x0)./x0))<tol
        disp(['The eigenvalue is ', num2str(lambda)])
        disp("The corresponding eigenvector is ")
        disp(x0)
        break % break the while loop
    else
        % update the initial guess
        x0=next_vec;
        iter=iter+1;
    end
end
