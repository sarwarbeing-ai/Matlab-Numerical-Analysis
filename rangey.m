% create a vector t
t=0:0.001:20; % vector with step size 0.001

% calculate the value of y
% .* is the element by element multiplication
y=2+2.3*sin(2*t).*exp(-t/5); % vectorized implementation

% plot
plot(t,y)
xlim([0 20]) % range for t
ylim([0 2]) %range for y 


% get the number of points for Range1 and Rnage2
range1=0; % initialize to zero
range2=0;

for i=1:length(y)
    % check if ith element of y is in the range (0,1)
    if y(i)>=0 && y(i)<=1
        range1=range1+1; % increment by 1
    end
    
    if y(i)>1 && y(i)<=2
        range2=range2+1;
    end
end

% [] use to concatenate strings
disp(['range1=',num2str(range1),' range2=',num2str(range2)])