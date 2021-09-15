% testing time 
data=[15,36,77,23,51];
primes=[]; % initialize the empty vector
for i=1:length(data)
    p=isPrime(data(i));
    primes(i)=p;
    
end
fprintf('The vecor is [')
fprintf('%g ',primes)
fprintf(']\n')

function p=isPrime(a)
% a is a number
% output
% p is either 0 if a is not a prime number else 1

p=1; % initialize to 1

% check if a is 1 or a<0
if (a==1) || (a<0)
    p=0; % not prime
    
elseif (a==2) || (a==3)
    p=1; % prime
    
else
    % you see a number n can be divisible by 2,3,...,n/2  atmost divisors
    % excluding itself amd 1
    % eg: n=10 then 2,5 are divisors of 10
    for i=2:a/2
        
        % check if a is divisible by i
        % rem is the remainder function
        if rem(a,i)==0
            p=0; % not prime
            break; %break the loop
        end
        
    
    end
end

end
