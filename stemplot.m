% create a vector for k
k=linspace(0,149,150); % equally spaced 150 values from 0 to 149

seq=(-2).^(k+1);

% plot
stem(k,seq)