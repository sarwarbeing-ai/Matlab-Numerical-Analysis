% ceil can't be use as it rounds number to the nearest integer 
% in the direction of +ve inifinity
% wherease floor rounds number to the nearest inetegr in the direction
% of -ve inifinity
% eg: ceil(0.9)=1 wherase floor(0.8)=0
% ceil(0.9)+1=2 but floor(0.8)+1=1

% use while loop
target_digits=1000000;

n=2; % initialize to 2
sum=log10(2);

while ((floor(sum)+1)<target_digits)
    n=n+1; % increment n by 1
    sum=sum+log10(n); % update the sum
    
end

fprintf("Smallest value of n is %d",n);