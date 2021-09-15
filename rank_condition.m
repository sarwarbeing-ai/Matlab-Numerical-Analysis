% part a))
A=[-5,1,10;5,-1,-1;4,9,2];

%rank of the matrix A
rk=rank(A);
fprintf("The rank of the matrix A is ");
    fprintf("%d ",rk);
    fprintf("\n");
%condition of the matrix

k=cond(A);
fprintf("The condition number is ");
    fprintf("%d ",k);
    fprintf("\n");