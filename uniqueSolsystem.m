% Ways to check for the unique solutiion of a system of linear equations
%1. check for the rank of the square matrix if rank(A)=number of rows then
%A is invertible Hence the system Ax=b has exact and unique solution 
% 2. if the system Ax=0 has only zero solution and  A is invertible
%  as the solution for the system Ax=b  is the sum of the particular
%  solution of Ax=b and the linear combinations of the basis vectors
%  obtained by solving Ax=0

 % Question 1 
 function uniquesol= uniqueSolsystem()
A=[1,2,-1;2,-1,2;1,3,-1];
b=[4;0;7];
%rank of the matrix A

if rank(A)==3
    disp(" The matrix A is invertible and Hence the system Ax=b has unique solution")

end % end of if condition   
 % Unique solution
 uniquesol=A\b;
  % check for exact solution 
if isequal(b,A*uniquesol)
    disp(" The solution is exact")
end
end
