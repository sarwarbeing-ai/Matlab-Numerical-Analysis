function coeff=Hermite_Interpolation(x,f,df)
% x is a vector of n distinct points
% f is a vector of the points [f(x1),f(x2),....,f(xn)]
% df is a vector of the points [f'(x1),f'(x2),....,f'(xn)]
% output:
% coeff is a vector of hermite interpolating coefficients

% initialize z and Q with zeros
z=zeros(1,2*length(x)); % vector of length 2n
Q=zeros(2*length(x),2*length(x)); % matrix of order 2n*2n

% use loops to construct the coefficients
% 1:length(x) will create a vector of [1,2,3,4,5,...,length(x)]
for i=1:length(x)
    
    
    z(2*i-1)=x(i);
    z(2*i)=x(i);
   
    % find Q
    Q(2*i-1,1)=f(i);
    Q(2*i,1)=f(i);
    
    Q(2*i,2)=df(i);
    
    % check if i not equal to 1
    if i~=1
        Q(2*i-1,2)=(Q(2*i-1,1)-Q(2*i-2,1))/(z(2*i-1)-z(2*i-2));
    end
end

% steps 4 and 5
for i=3:2*length(x)
    
    for j=3:i
        Q(i,j)=(Q(i,j-1)-Q(i-1,j-1))/(z(i)-z(i-j+1));
        
    end
end

% now find the coefficients
coeff=diag(Q); % diagonal elements of the matrix Q
end
