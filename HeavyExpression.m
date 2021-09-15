% since the expression involves two summation goes upto infinity
% in computer it is not possible to go upto infinity
% let's take 10001 terms in both the summations

terms=10000;

sum1=0; % initialized to zero
sum2=0; 

% create a vector of x values 
x=-10:0.1:10;

y0=4;

xd=35;
theta=0;

for n=0:terms
    sum1=sum1+(-1)^n*(x.^(4*n+1))/(4^n*(4*n+1)*factorial(2*n)); % .^ is the element
                                                                % by
                                                                % element
                                                                % power
    
    sum2=sum2+(-1)^n*(x.^(4*n+3))/(4^n*(8*n+6)*factorial(2*n+1));
end

% Note: sum1 and sum2 are vectors as x is a vector

% now subtract sqrt(pi)/2 from both the sum
sum1=sum1-sqrt(pi)/2;
sum2=sum2-sqrt(pi)/2;

% now multiply cos(theta+x.^2/2) with sum1
%  and sin(theta+x.^2/2) with sum2
sum1=sum1.*cos(theta+x.^2/2); % .* is the element by element multiplication
                              
sum2=sum2.*sin(theta+x.^2/2);


% now add sum1 and sum2
sum1_sum2=sum1+sum2;


% now multiply x with sum1_sum2
sum1_sum2=x.*sum1_sum2;


% add sin(theta) to sum1_sum2
sum1_sum2=sum1_sum2+sin(theta);

% multiply sum1_sum2 with y0*exp(-(x/xd)^3)
y=y0*exp(-(x/xd).^3).*sum1_sum2;



% now plot 
plot(x,y,'-r') % red solid line
xlabel("x")
ylabel("y")

