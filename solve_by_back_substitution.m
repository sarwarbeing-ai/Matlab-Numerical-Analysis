function sol=solve_by_back_substition(u,b)
    
    % get the size of the matrix u
    [m,n]=size(u);
    
    sol=zeros(m,1) % initialize with zeros
   
    % check if u(m,n) has zero value 
    % and b(m) has non zero value
    if u(m,n)==0 && b(m)~=0
        error(" The system has no solution")
    
    else 
        
        
    
    