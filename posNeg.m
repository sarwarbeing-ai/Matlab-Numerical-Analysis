% part B))
A=-50+(60+50)*rand(1,100); % rand function calculates random number between 0 and 1
                             % to calculate random numbers b/w a and b
                             % use a+(b-a)*rand()
                             
                             

% method 1
% get the number of +ve,-ve and zeros in A
Npos=sum(A>0); % A>0 will return a matrix of 1's and zeros
               % 1 correspond to values greater than zero
               % 0 otherwise
               
Nneg=sum(A<0);

Nzero=100-(Npos+Nneg); % total elements subtract from it Npos+Nneg




fprintf('Using comparision operator > and sum \n')
fprintf('Number of positives is %d\n',Npos)
fprintf('Number of negatives is %d\n',Nneg)
fprintf('Number of zeros is %d\n',Nzero)



% method 2

% using find fucntion
indices=find(A>0); % positive indices

Npos=length(indices);


indices=find(A<0); % negative indices
Nneg=length(indices);

indices=find(A==0); % zeros indices

fprintf('Using find function  \n')
fprintf('Number of positives is %d\n',Npos)
fprintf('Number of negatives is %d\n',Nneg)
fprintf('Number of zeros is %d\n',Nzero)
