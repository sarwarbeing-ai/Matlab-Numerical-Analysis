% create a vector X to store the values of x1,x2,x3,...
X=[];

x1=1; 
 % store x1 into X
 X=[X x1];
 
 tol=10^-3; % tolerance
 
 % use while loop to find the rest values
 while 1
     
     next=3/(4^x1); % next value in the sequence
     
     % store the next value into the vector X
     X=[X next];
     
     % check for the tolerance
     if abs(next-x1)<=tol
         break; % break the while loop
     else
         % update x1
         x1=next;
     end
 end
 
 disp("The sequence is ")
 disp(X(1:10))