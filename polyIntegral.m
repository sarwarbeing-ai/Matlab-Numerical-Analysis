% since the data file is not availabel I would use two vectors
% Time and Distance from the data that you have provided

% Note: use load function to load the variables into Matlab workspace
% load(filename); % uncomment this line ,if you have the required file
                  % this will load all the variables
                  % Time,Distance,Accel,Speed
                  
                  
% Time vector
Time=1:33; % vector from 1:33

% Distance
Distance=[0,1,2.5,4,5.5,7,8.5,10,11.5,13,14.5,16.5,18.5,20.5,22.5,25,28,31,34,37.5,42,46.5,51,55.5,60.5,65.5,70.5,75.5,80.5,85.5,90.5,95.5,100.5];

% Note: commented out the above two lines Time and Distance     if you have
% the file 



% part a))
C=polyfit(Distance,Time,5); % 5th degree polynomial fit
                            % the C is a vector of coefficients
                            % of the polynomial in decreasing order of
                            % powers i.e C(1)=a5,C(2)=a4,...,C(6)=a0 where
                            % the polynomial is
                            % a5*x^5+a4*x^4+a3*x^3+a2*x^2+a1*x+a0
                            
                            

                            
                            
                            
% part c))
% since the function in part b takes addition argument C
% therefore create a  function of x only  using @
P=@(x) Poly(x,C); % x is a distance


% now get the integeral value
I=integral(P,0,100) % integration of the polynomial of order 5 from 0 to 100
                            

% part b))

% create
% a function which returns polynomial
function P=Poly(x,C)
% C is the vector of coefficients
P=C(1)*x.^5+C(2)*x.^4+C(3)*x.^3+C(4)*x.^2+C(5)*x+C(6); % .^ element by element power, x can be a vector
end