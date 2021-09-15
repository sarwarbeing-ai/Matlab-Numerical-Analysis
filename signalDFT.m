clc;clear;close all;
% since the signal.txt file is not available in .txt format
% therefore the data points will be stored as a vector
format long g;
% sample signal
x=[1.0000
 7.5323
-0.7715
-7.7076
0.0752
6.4196
-0.2953
-4.7225
1.6491
3.9269
-2.9073
-3.9729
2.9420
3.5445
-2.1457
-1.7790
1.9263
-0.5921
-2.9168
2.1142
4.1640
-2.3947
-4.3221
2.5459
3.3423
-3.7282
-2.5231
5.6373
2.8580
-6.8500
-3.7705
6.5926
3.8370
-5.6970
-2.5839
5.5360
1.0873
-6.2848
-0.6173
6.7062
1.0420
-5.7312
-1.0085
3.8352
-0.3275
-2.4684
2.2108
2.2601
-3.2147
-2.2646
3.0152
1.2014
-2.7690
0.8802
3.6181
-2.6195
-5.2141
3.0226
6.1281
-2.6817
-5.6305
2.9937
4.5906
-4.3673
-4.3602
5.6870
5.0538
-5.7115
-5.4002
4.6382
4.3546
-3.8564
-2.4319
4.1993
1.0762
-4.9058
-0.8626
4.6025
0.8046
-3.0644
0.3586
1.5257
-2.5233
-1.1476
4.3058
1.5782
-4.7436
-1.4253
4.4658
0.0426
-4.8531
1.6298
6.2520
-2.2339
-7.5034
1.6944
7.3815
-1.3014
-6.1270
2.0702
5.1344
-3.4526]'; % transpose to row vector

% plot the signal
% 1))
figure;
plot(1:102,x,'-r','LineWidth',1.3)
title('Discrete signal')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Q.2)) calculate DFT of x
X1=[]; % dft of x

% 1028 points DFT
for k=1:1028
    
    % vectorized implementation of the DFT 
    % using nested loop is not feasible
    % as 1028*102 many times this piece of code of run
    % you can have vectorized implementation to avoid the 
    % burden of computation
    % in matlab by default i and j are imaginery units
    % .* point-wise multiplication
    % the inside part of exp is a vector 
    vec_sum=0;
    for n=1:length(102)
        vec_sum=vec_sum+x(n)*exp(-1j*(2*pi*n*k/length(x)));
    end
   %dft_vec=x.*exp(-1j*((2*pi/length(x))*(1:length(x))*k));
   X1(k)=vec_sum;
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Q.3)) magnitude and phase of the signal X
mag=abs(X1);
phase=angle(X1);

figure; % create a figure
hold on
plot(1:1028,mag,'-b','LineWidth',1.3)
plot(1:1028,phase,'-g','LineWidth',1.3)
title("Magnitude and Phase of the DFT X1(k) of the signal x")
legend('Magnitude','Phase')
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Q.4))
X2=fft(x,1028);

% magnitude
mag2=abs(X2);

% phase
phase2=angle(X2);

figure; % create a figure
hold on
plot(1:1028,mag2,'-b','LineWidth',1.3)
plot(1:1028,phase2,'-g','LineWidth',1.3)
title("Magnitude and Phase of the DFT X2(k) of the signal x")
legend('Magnitude','Phase')
hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Q.5))

% difference of magnitude
diff_mag=mag-mag2;

% phase difference

diff_phase=phase-phase2;

figure; % create a figure
hold on
plot(1:1028,diff_mag,'-b','LineWidth',1.3)
plot(1:1028,diff_phase,'-g','LineWidth',1.3)
title(sprintf("Magnitude  and Phase difference of \n the DFT X1(k) and X2(k) of the signal x"))
legend('Magnitude difference','Phase difference')
hold off

