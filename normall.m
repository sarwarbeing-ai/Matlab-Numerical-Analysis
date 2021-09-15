sigma=0.5; % variable sigma

mu=2; % mean

x=linspace(0,4*mu,100); % equally sapced 100 points

% .^ element by element power

N=exp(-((x-mu).^2)/(2*sigma^2))/(sigma*sqrt(2*pi)) % vectorized implementation


