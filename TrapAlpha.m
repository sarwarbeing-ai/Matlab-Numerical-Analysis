% get the integral value using composite trapezoidal rule
% N=100; % number of subintervals for composite trapezoidal rule

% create a vector of beta values
beta=0.1:0.5:30; % with steps size 0.5 % at beta=0 the integral is zero

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alpha=1.0;
% define the integrand with alpha=1.0 as function handle
f=@(x) x.*exp(-x./10); % .* element by elment multiplication
                       % this is also called vectorized implementation
                       
                       


% interal value for alpha=1.0
I_1=[];
for i=1:length(beta)
    I_1(i)=trapezoidal(f,0,beta(i),100);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% alpha=2.0
alpha=2.0;
% define the integrand with alpha=2.0 as function handle
f=@(x) 2.0*x.*exp(-x./10); % .* element by elment multiplication
                       % this is also called vectorized implementation
                       
                       


% interal value for alpha=2.0
I_2=[];
for i=1:length(beta)
    I_2(i)=trapezoidal(f,0,beta(i),100);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% alpha=3.0
alpha=3.0;
% define the integrand with alpha=3.0 as function handle
f=@(x) 3.0*x.*exp(-x./10); % .* element by elment multiplication
                       % this is also called vectorized implementation
                       
                       


% interal value for alpha=3.0
I_3=[];
for i=1:length(beta)
    I_3(i)=trapezoidal(f,0,beta(i),100);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% insert 0 at the beining of all the vectors I_1,I_2,I_3 as
% at beta=0 the integration is zero
I_1=[0,I_1];
I_2=[0,I_2];
I_3=[0,I_3];
beta=[0,beta];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plot
hold on
plot(beta,I_1,'-r')
plot(beta,I_2,'-b')
plot(beta,I_3,'-g')
xlabel("β")
ylabel("A")
legend('α=1.0','α=2.0','α=3.0')
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% define the function trapezoidal
% composite trapezoidal rule
function I=trapezoidal(fun,a,b,N)
% fun: function handle(should be written in vectorized way)
% a  lower limit of integration
% b  upper limit of integration
% N  number of subintervals
%output:
% I  value of the integral
if N==1
    I=(b-a)*(fun(a)+fun(b))/2; % simple trapezoidal rule
else
    % step size
    h=(b-a)/N;
    
    % the vector of end points of all subintervals
    x=a:h:b;
   
    % function value at x
    fval=fun(x);
   
    % integral value
    % fval(1)=fun(a)
    % fval(N+1)=fun(b)
   
    I=h*(fval(1)+fval(N+1))/2+h*sum(fval(2:N)); % composite trap rule
end
end

