% create the coefficient matrix A
A=[1,-1;1,1;2,1];

% vector b
b=[3;4;8];

% pseudo inverse of A
A_pseudo=pinv(A);

disp('Pseudoinverse of A is ')
disp(A_pseudo)


% least square solution
% c=pinv(A'*A)*A'*b where A' is the transpose of A
% pinv(A'*A) inverse of A'*A
% c is the coefficient vector
c=pinv(A'*A)*A'*b;

disp('Least square solution')
disp(c)


% residual error
pred=A*c; % predicted value for b

res_error=abs(b-pred);% absolute residual vector
disp('Residual vector is')
disp(res_error)
