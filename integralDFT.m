% first define n
n=0:15; % vector from 0 to 15 with step size 1

% calculate the value of f[n]
f_n=exp(-0.2*n);

% calculate DFT of f[n]

dft_f=fft(f_n);


% claculate the integral of the DFT of f[n]

integral_dft=trapz(dft_f) % get the integral using trapezoidal rule

