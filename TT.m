% ask the user for the number A and B
A=input("Enter the value of A: ");

B=input("Enter the value of B: ");

% check if A>B
if A>B
    T=A^2-2*B-5;

% otherwise
else
    
    T=A^3-3*B+10;
end

% display the value of T to the user
disp(['T=',num2str(T)]) % [] use to concatenate strings
                        % num2str will convert the number into string
                        
                        