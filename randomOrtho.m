% PART a))
% generate 10 by 10 random matrix using rand in the interval [-1,1]
% since rand function generates random random number in the range [0,1]
% to generate random numbers in [a,b] use the following formula
% a+(b-a)*rand

% so in [-1,1], the formula is -1+2*rand

B=-1+2*rand(10,10);


% PART b))
% generate QR factorization of B
[Q,~]=qr(B);

disp("QR factorization of B is "),Q


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PART c))
% in order to generate 100 orthonormal matrices ,you need to use for  loop
% store all the 100 orthonormal matrices ,into big matrix
% order 1000 by 10 i.e there would be 100 matrix concatenated vertically

% big=[]; % it would be filled inside the for loop

% first fill big with a orthonormal matrix
% the rest will be generated using for loop
 % generate B
 B=-1+2*rand(10,10);
    
 [Q,~]=qr(B);
    
 % multiply eps=10^-8
 Q=(10^-8)*Q;
 
 % store Q in big
 big=Q;
 
for i=2:100
    % generate B
    B=-1+2*rand(10,10);
    
    [Q,~]=qr(B);
    
    % multiply eps=10^-8
    Q=(10^-8)*Q;
    
    % now store Q into big
    big=[big;Q];
    
end


% display the dimension of the matrix big
disp("Dimension of big is "),   size(big)


% Note : how to retrieve Q1,Q2,...,Q100
% you can do so just by using for loop
% eg:
% for i=1:10:992 % this will generate vector 1,11,21,31,...,991
% Q_i=big(i:i+9,:)