% create the matrix M
M=[3:3:18;-10:5:15;5:-1:0;(3:1:8).^2] % 3:3:18 create a row vector from 3 to
                                       % 18 with step size 3
                                       %-10:5:15 vector from -5 to 15 with
                                       %step size 5
                                       % 5:-1:0 vcetor with step size -1
                                       % (3:1:8).^2 vector from 3 to 8
                                       % with step size 1 and then take the
                                       % power 2 element wise
                                       
% part a))
 first_col=M(:,1)'; % first column element ,transpose it to make it a row 
                  % vector
                  
                  
 last_three=M(2,[4,5,6]); % last three elements of the second row
 
 
 new=[first_col last_three]; % form the vector new
 
 % modify the middle element of new
 middle=new(4); % 4th element is the midle element of the vector new
 
 % check if middle is even
 if rem(middle,2)==0 % rem is the remainder function
     new(4)=sum(new); % change the middle element
 else
     new(4)=mean(new);
 end
 
 % return A
 A=new
 
 
 % part b))
 % create the new vector 
 new=[M(1,:) M(4,:)] ; % vector of first and 4th row from M
 
 % modify new to create vector B
 % set the first element of the vector new to be empty vector
 new(1)=[]; % this will delete first element
 
 new(end)=[]; % this will delete last element
 
 B=new % the vector B
 
 
 
 % part c))
 
 maxIndex=find(max(B)==B) % get the max index of the vector B
 maxB=B(maxIndex)
 
 minIndex=find(min(B)==B) % get the min(smallest element index) index of the vector B
 minB=B(minIndex)
 
 
 
 % part d))
 
 mat=randi([5 20],6,4); % first create a matrix of order 6*4 of random integers from 5 to 20
                      
 % modify the middle two rows and the middle two columns
 mat(3:4,2:3)=0; % 3rd,4th rows and 2nd ,3rd column have been modified to contain zeros
 
 
 N=mat % matrix N
 
 
 % since the order of the matrix N is 6 by 4 and order of the matrix M is 4
 % by 6 therefore carry out the matrix multiplication
 
 C=N*M
 
 
                                       