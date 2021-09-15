% create vector Tvec of temperatures
Tvec=[25,50,95,145,315]'; % ' is the transpose operator ,to make it a column vector

% create Viscosity vector 
Visvec=[0.95,0.48,0.0850,0.0110,0.0008]';

% in order to get the value of P4 you need to fit the polynomial to the
% above data
% write the polynomial in matrix form as follows:
% [T^4,T^3,T^2,T,1]*P=V where P(1)=P5,P(2)=P4,P(3)=P3,P(4)=P2,P(5)=P1

% The solution for p1,p2,p3,p4,p5 can be obtained using least square 
% method

% The least square solution would be inv(X'*X)*X'*Visvec where inv is the
% inverse function and this expression is called normal equation
% and X is as follows
% X=[Tvec^4,Tvec^3,Tvec^2,Tvec,1] is a matrix of order N by 5 such that X*P=Visvec  where
% where N is the number of data points and here N=5 
% so the solution would be P=inv(X'*X)*X'*Visvec 

% construct X
X=[Tvec.^4,Tvec.^3,Tvec.^2,Tvec,ones(length(Tvec),1)];% ones(length(Tvec),1) is a vector of ones

% get the solution vector
P=(X'*X)\(X'*Visvec); % this is equivalent of solving inv(X'*X)*X'*Visvec as
                      % \(backslash) is much more efficient then inv
                      % function 
                      
% get the value of p4
p4=P(2);

disp(['p4=',num2str(p4)]) % [] use to concatenate strings

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% value of V at T=200
T=200;
v=P(1)*T^4+P(2)*T^3+P(3)*T^2+P(4)*T+P(5);

disp(['V=',num2str(v),' at T=',num2str(T)])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% get the value of T at v=1 using fzero function
% first define a paramterized fucntion as follows
fparam=@(T,P) P(1)*T^4+P(2)*T^3+P(3)*T^2+P(4)*T+P(5)-1;

% now define another function which is a function of T only 
f=@(T) fparam(T,P); % P is the vector that we obtained above

% Note: The above parameterized function defined as fzero accepts function
% of T only as P1,p2,p3,p4,p5 all are paramters i.e they are constants


% now get the value of T
T=fzero(f,15); % 15 is the initial value for T( just taken,you can take different if you want)

disp(['T=',num2str(T),' when V=1'])


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part 2))
% V=AT^3exp(BT)
% take natural logarithm both sides,obtained
% log(V)=log(AT^3)+Log(exp(BT)) as log(ab)=log(a)+log(b)
% log(V)=log(A)+3*log(T)+B*T as log(exp(a))=a and log(T^3)=3log(T)

% so y=a+3*
