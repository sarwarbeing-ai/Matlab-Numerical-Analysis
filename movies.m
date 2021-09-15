A=[1 1 1 0 0
3 3 3 0 0
4 4 4 0 0
5 5 5 0 0
0 2 0 4 4
0 0 0 5 5
0 1 0 2 2]; % the matrix

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% find the SVD
[U,S,V]=svd(A);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% correlation between the A_approx and A

% get the approximate value of A
A_approx=U*S*V'; % V' is the transpose of V
corr_A_A_approx=corrcoef(A,A_approx);