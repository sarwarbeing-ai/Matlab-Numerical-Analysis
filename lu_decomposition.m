     A=[-5,1,10;5,-1,-1;4,9,2];
     b=[40;2;33];

    [L,U,P]=lu(A); %lu stands for LU decomposition
    % L is the lower triangular matrix and U is the Upper 
    % triangular matrix
    % P is the permutation matrix such that PA=LU
    % This is also called LU factorizartion with partial pivoting
    
    
    
    % Now Ax=b
    % so PA=LU ,then LUx=Pb
    % In order to solve for x you need to do the followings
    
    
    % 1. solve Ly=Pb for y
    % 2.Solve Ux=y for x
    
    y=L\(P*b); % \ backlash operator is nothing but (L-inverse)*(P*b)
    x=U\y;
    fprintf("The solution of the linear system:[");
    fprintf("%g ",x);
    fprintf("]");
    
