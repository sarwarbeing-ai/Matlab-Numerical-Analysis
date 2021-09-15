rng(123); % for reproducibility
mu=1.5;
sigma=sqrt(3);
rnorm=normrnd(mu,sigma,1,2000); % 2000 normal data points

% histogram
hold on
histogram(rnorm,50,'FaceColor','m','Normalization',"pdf")

% plot the pdf
% compute the pdf
pdf=exp(-0.5*((rnorm-1.5)/sigma).^2)/(sigma*sqrt(2*pi));

plot(rnorm,pdf,'-b')
xlabel("x")
ylabel("Density")
title("Histogram and Density Curve")
legend("Histogram","Density Curve")
hold off

