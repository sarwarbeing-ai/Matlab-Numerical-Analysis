format long
% basis matrix
u1=[4;-1;-1]; % u1 vector
u2=[-2;5;2];
u3=[1;2;1];
U=[u1 u2 u3]; % basis matrix

% matrix Q
Q= mygschmidt(U);
% size returns [row,col] there is no need of row
% therefore you can ignore it using ~
[~,n]=size(Q); % get the size of the matrix Q

% initialize R_dummy to zeros matrix of order n*n
R_dummy=zeros(n,n);

% fill the matrix R
for i=1:n
    row=[];% row vector to be placed in R
    for j=1:n
        row=[row dot(U(:,j),Q(:,i))];
    end
    R_dummy(i,:)=row;
end

% get the final R by extracting the upper triangular part from R_dummy
R=  triu(R_dummy);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp("The matrix Q is ")
disp(Q)
disp("The matrix R is")
disp(R)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Check if the two matrix U and Q*R are equal
% since due to normalization and multiplication the matrix Q lost
% some precision ,therefore equality will be checked on some tolerance
% let's say tol=10^-14 i.e 0.00000000000001
% get the absolute value of U-Q*R
tol=10^-14;
m=abs(U-Q*R);
log=m<tol;
if log
    disp("the matrix U and QR are equal")
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ortho= mygschmidt(basis)
% basis- basis matrix whose column are linear independent
    % output:
    % orhto- orthonormal basis matrix
    
        
        
        
   % append the vector w1 to the matrix ortho
   %  get the vector w1
   w1=basis(:,1); % first vector
        
   % normalize w1 to make it a unit vector
   w1_norm=w1./norm(w1); % euclidean norm
        
        
   % now append w1_norm to the matrix ortho
   ortho(:,1)=w1_norm;
        
   % now find the rest orthonormal vectors
   % gram schmidt process
   [~,n]=size(basis); % get the dimension of the matrix basis
   for i=2:n
       sum_vector=0;
       for k=1:i-1
           % calculate the sum of vectors
           % dot -is the dot product
           sum_vector=sum_vector+(dot(basis(:,i),ortho(:,k))/dot(ortho(:,k),ortho(:,k)))*ortho(:,k);
            
       end
       
       % orthogonal vector
       w=basis(:,i)-sum_vector;
            
       % normalize w to make it unit vector
       w=w./norm(w);
            
         
            
       % append to the ortho matrix
       ortho(:,i)=w;
           
  end
end
        
        
      