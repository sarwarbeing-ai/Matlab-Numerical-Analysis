% part a))
% find al the roots of the polynomial uisng roots function
p=[1,-16.05,88.75,-192.037,116.35,31.6875]; % coefficients of the polynomial
                                            % in decreasing order i.e
                                            % an,an-1,an-2,an-3,..,a0
                                            
% get all the roots
proots=roots(p); % roots function works for polynomial only
disp("The roots of the polynomial are: "),proots

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part b))
% create a vector x
x=linspace(-15,15,300); % equally spaced 300 points start at -15 ends at 15

% evaluate f
f=x.^5-16.05*x.^4+88.75*x.^3-192.037*x.^2+116.35*x+31.6875; % .^ element by element poower
                                                            % this kind of
                                                            % implementation
                                                            % is called
                                                            % vectorized
                                                            % implementation

% plot
plot(x,f,'-g')

                                                            
