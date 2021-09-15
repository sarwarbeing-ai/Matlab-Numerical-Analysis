% demonstration
mat=magic(5);
Q=fiveNum(mat);
disp("The percentiles vector is")
disp(Q)

% define the function fiveNum
function Q=fiveNum(mat)
    % mat is a matrix
    % output:
    % Q -vector of quartiles
    % Procedures:
    % 1. first reshape the matrix mat into a row vector
    % 2. sort the vector in ascending order
    % 3. calculate the median of the lower half
    % of the sorted vector with respect to median(Q2) 
    % this is Q1
    % and median of the upper half of the sorted vector
    % with respect to median ----this is Q3
    % Q1,Q2,Q3 are first ,second ,and third quartiles
    
    % reshape the matrix mat into a row vector
    % here reshape takes first argument as the matrix 
    % the rest are dimensions
    % here 1 ,[] to convert it into a row vecto
    % if you want to convert the matrix into column then
    % you have to use reshape(mat,[],1);
    vec=reshape(mat,1,[]);
    
    % get the length of the vector
    n=length(vec);
  
  
    % sort the vector in ascending order
    vec_sorted=sort(vec);
  
    % check if n is even
    % rem is the remainder division
    if rem(n,2)==0
        % get the lower half index and upper half index
        l=n/2; % for the lower half 
        u=n/2+1; % for the upper half
    
        % calculate the median of the sorted vector
        Q2=(vec_sorted(l)+vec_sorted(u))/2;
        
        % calculate Q1 and Q2
        Q1=median_udf(vec_sorted(1:l));
        Q3=median_udf(vec_sorted(u:end));
   
    else
        % if n is odd
        l=(n+1)/2-1;
        u=(n+1)/2 +1;
    
        Q1=median_udf(vec_sorted(1:l));
        Q2=vec_sorted((n+1)/2);
        Q3=median_udf(vec_sorted(u:end));
    end
    
    % get the maximum and minimum of the matrix
    mx=max(vec_sorted);
    mn=min(vec_sorted);
    
    % create the output
    Q=[mn;Q1;Q2;Q3;mx];
end

% define another funciton called median_udf
function med=median_udf(vec)
% it calculates the median vector vec

% get the length of the vector vec
n=length(vec);

% if n is odd then at index (n+1)/2 will be the median
% if n is even then median=(x(l)+x(u))/2
% where l=n/2 and u=n/2+1

% check if n is even
% rem is the remainder division
    if rem(n,2)==0
        % get the lower half index and upper half index
        l=n/2; % for the lower half 
        u=n/2+1; % for the upper half
    
       med=(vec(l)+vec(u))/2;
    else
        med=vec((n+1)/2);
    end
    
    
end