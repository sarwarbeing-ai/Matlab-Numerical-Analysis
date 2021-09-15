% t vector 
t=0:0.1:1; % vecetor values from 0 to 1 with step size 0.1

% get the vector x
x=2*pi*t;

% get the value of exp(x)
y=exp(x);

% get ymax which is nothing but the last point(101st) in the vector y
ymax=y(end);

% display the value of exp(2pi) in the command window

disp(['exp(2pi)=',num2str(ymax)]) % [] use to concatenate strings ,
                                  % num2str will convert number to string
                                  
% xmax
xmax=2*pi;

% initialize z
z(1)=0;

% initialize s
s(1)=0;

% for loop from 1 to 20
for k=1:20
    z(k+1)=k; % no. of terms in the partial sum
    
    s(k+1)=s(k)+xmax^(k-1)/factorial(k-1); % gte the  (k+1)th partial sum    
    
end

% final partial sum
disp(['final partial sum=',num2str(s(end))]) % [] use to concatenate strings
                                             % num2str will convert number
                                             % to string

                                 
                                             
                                             
% plotting time
subplot(1,2,1) % 1 row ,2 columns(total 2 panels) ,third argument is the index of the current active axes

% plot y agains x
plot(x,y,'-r') % red lines
xlabel("x")
ylabel("exp(x)")
title("Id=2345656,exponential plots") % change id accordingly


% second graph
subplot(1,2,2)
plot(z,s,'-g') % green line
xlabel("number of terms")
ylabel("partial sum")

%%%%%%%%%%%%%%%%%%%%%%%%%% end %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%