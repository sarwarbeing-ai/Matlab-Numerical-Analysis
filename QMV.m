% part a))
V=(1:20)'; % build the vector V,
           % ' is the transpose operator
           % (1:20) will create vector 1,2,3,4,..,20 of dimension 1*20

% part b))
M=zeros(20,3); % matrix of zeros

% modify M
% to modify M you can use logical vector 
% Eg: if x=[1,0,1,..,0]' of dimension 20*1
% them M(x,1) will modify first column ,row 1 and row3

logical1=mod(V,2)==0; % this will be a vector of zero's and ones ,
                   % zero if the number is odd
                   % and 1 if the number is even
                    
 M(logical1,1)=1; % modify first column
 
 
 % modify second column
 logical2=ismember(V,[5;10;15]); % check if V is a member of [5;10;15]
                                 % will return a vector of 0's and 1's
                                 % of same dimension as V
                                 % 1 for if an element belongs to [5;10;15]
                                 % otherwise 0
                                 
 M(logical2,2)=1; % modify second column
 
 
 logical3=V>7 & mod(V,2)==0; % logical vector
 M(logical3,3)=1;% modify third column
 
 M % display M
 
 
 % part c))
 W=repmat([1;2;3;4;5],4,1); % repeat the column vector [1;2;3;4;5] 4 times
                            % by row and 1 time by column
                            
 % loop to fill the vector Q                           
 for i=1:5
     logical=W==i; % logical vector
     Q(i)=sum(V(logical)); % ith cell of Q
 end
 
 Q % display Q
 
 
 