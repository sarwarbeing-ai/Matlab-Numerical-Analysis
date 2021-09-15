% part a))
% create  the vector x
x=[0,1,2,3,4,5];

% y vector
y=[1.0,-0.6242,-1.4707,3.2406,-0.7366,-6.3717];

% linear interpolation
y_linear=interp1(x,y,x,'linear'); % third argument is the query points
                                  % i.e the interpolated polynomial will be
                                  % evaluated on these points.In other
                                  % words the predicted values for x values

                                  
% spline
y_spline=interp1(x,y,x,'spline');

% pchip
y_pchip=interp1(x,y,x,'pchip');


% get the function values at x
f=1.5*cos(2*x);


% plotting time
figure; % empty figure
hold on
plot(x,y,'.r','MarkerSize',14) % red data points
plot(x,y_linear,'-r')
plot(x,y_spline,'-g')
plot(x,y_pchip,'-b')
plot(x,f,'-k') % function curve
legend({'data','linear','spline','pchip','function'},'Interpreter','latex') % legend to annotate the 
                                                                            % the plot
hold off


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%$5%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part b))
p=[0.02,-0.75,0,12.5,-2]; % polynomial coefficients in descending order
                          % 0 is the coefficient of x^2

% create a vector x
x=linspace(-2,2,100); % equally spaced 100 points  from -2 to 2

% evaluate the polynomial on x
y=polyval(p,x); % polyval function accepts two arguments ,first one is the vector of 
% coefficients in descending order of power and second the x values

figure; % figure2
plot(x,y,'-r')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part c))
% polynomial division
% we will use deconv function to divide polynomial p by q

% part i))
Pi=[12,21,-11,-14,18,28,-4]; % coefficients of the dividend polynomial ,
% stored in descending order of power,12x^6+21x^5-11x^4-14x^3+18x^2+285x-4


% divisor polynomial
Qi=[4,-7,1]; %  4x^2-7*x+1    


[qi,ri]=deconv(Pi,Qi); % qi is the vector of coefficients of the qoutient polynomial
                    % ri is the vector of coefficients of the remainder
                    % polynomial         
                    
disp('Qoutient Polynomial coeffcients for part i: '),qi
disp('Remainder Polynomial coeffcients for part i: '),ri



% part ii))

Pii=[4,6,-2,-5,3]; % coefficients of the dividend polynomial ,
% stored in descending order of power,4x^4+6x^3-2x^2-5x+3


% divisor polynomial
Qii=[2,4,2]; % 2x^2+4*x+2


[qii,rii]=deconv(Pii,Qii); % qii is the vector of coefficients of the qoutient polynomial
                    % rii is the vector of coefficients of the remainder
                    % polynomial
                    
disp('Qoutient Polynomial coeffcients for part ii: '),qii
disp('Remainder Polynomial coeffcients for part ii: '),rii

