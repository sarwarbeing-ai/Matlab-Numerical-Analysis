fo = fitoptions('Method','NonlinearLeastSquares',...
               'Lower',[0,0],...
               'StartPoint',[0.5 0.5 0.5]);

ft = fittype('exp(a-b*(x+c)^-1)','options',fo);
x=[-16,-6,11,34,65];
y=[10,20,60,200,760];
[curve2,gof2] = fit(x,y,ft);