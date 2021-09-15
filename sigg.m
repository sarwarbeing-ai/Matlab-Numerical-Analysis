t = 0:0.001:6;
Am=12
% .* element by element multiplication
Ym = Am.*sin(2*pi*2*t); % mistake 1` instead of *. ,paste .*
subplot(3, 1, 1); % 3 rows ,1 column ,third parameter is the index of the current axe
plot(t, Ym)
title ("Message Signal");
Ac=4
Yc = Ac.*sin (2*pi*10*t);
subplot(3, 1, 2);
plot(t, Yc) % mistake 2 ,it should be Yc not yc
title ('Carrier Signal');
z= (Ac + Ym).*Yc;

% placing 4 is not a mistake  as the code will
% run amoothly but there will be no third plot
subplot(3, 1, 3); % mistake 3,the mistake is that inplace of 4 there should be 1
plot(t, z, 'r');
title ('Modulated Signal');
