% demonstration
s0=50;
r=0.15;
sigma=0.40;
Tfinal=3*52; % in one year there are 52 weeks
delta=2;
npaths=4;
paths=stock_sim(s0,r,sigma,Tfinal,delta,npaths); % simulate stock

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[m,n]=size(paths); % size of the matrix paths

plot(1:m,paths(:,1),1:m,paths(:,2),1:m,paths(:,3),1:m,paths(:,4)) % plot all the four paths on the same figure


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% write a function to simulate stock paths
function paths=stock_sim(s0,r,sigma,Tfinal,delta,npaths)
% s0- initial stock price
% r-return
% sigma -volatility 
% Tfinal-final time
% delta-timestamp
% npaths- number of paths

M=Tfinal/delta; % number of time steps
paths=zeros(M,npaths); % initialize to zero

paths(1,:)=s0; % insert s0 at the first row(every element will be s0)

% Note:
% Formual: for geometric brownian motion
% St=St-1*(exp(r-0.5*sigma^2)*delta + sigma*sqrt(delta)*noise)



for t=2:M
    noise=randn(1,npaths); % generate noise(standard normal)
    paths(t,:)=paths(t-1,:).*exp((r-0.5*sigma^2)*delta + sigma*sqrt(delta)*noise);% get next stock price
end
end
