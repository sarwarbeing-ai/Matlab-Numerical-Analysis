clc;clear;close all;
% data points for training and testing
xte=[1.73355352860138
1.99209237133766
1.32732326152776
0.413120986236385
0.610837980055463
0.659785685174500
2.34757111228821
2.12358152564577
1.57197812648638
2.93711040066960
0.800886505225464
2.18509573946210
1.11613438076237
1.45102425773604
2.32722240393162
2.84618342383820
1.99990673965052
2.20318618991326
1.93762451071654
0.0570000687968290];

xtr =[0.606606880290724
2.35364281233168
2.58161171771109
0.981255603244304
0.746581428254500
2.43109114873943
2.14030436777179
1.98398524013467
2.13147377108870
0.338702625510352
2.60991601036822
1.42928345209785
0.240812642812258
0.446311385768251
0.972072761137467
0.0202721544642552
2.15064021822177
0.195230164498296
1.27153721401241
2.41463877176186
0.0884883689334707
1.57730492569935
2.36200804821444
2.43562758215650
1.02437227297160
1.19902002777894
2.58699510779147
0.00640689200844757
0.506888007807307
1.15088605877353
1.79985365444960
0.391406872287459
0.104011038083396
2.10572214530692
1.59506763300663
2.24531274084548
0.456194683875672
0.204427584362518
1.46440807172913
1.60332487409589];

yte =[4.82674825335351
3.65857943510247
5.65799669566644
4.91680659588818
3.07782340317798
5.98805356954529
2.59909492045443
3.10047283139309
4.00654550891392
-1.25935804533954
4.77919611447295
2.28687270677052
5.53542005164231
5.52099315213489
1.93371390782492
0.0826459520047387
2.80813200890277
2.35086092390847
4.63547256722186
4.03606366423135];

ytr =[5.47225476001557
1.94481432398970
1.06932060865716
4.11047366915593
5.13494948021637
0.661863691596762
2.51777898187010
2.61114067570561
2.95996158725221
4.39664359277194
-0.643456390619809
4.17131940900989
3.42297169974125
4.43575081094914
3.86305321468560
1.64060849137319
3.30225070017530
2.59671238498775
5.65588390409604
-0.262410888326743
2.18472686664096
5.61035114903398
2.73335618912404
1.78457410087643
5.17727229119860
4.80143197438388
0.400986032869515
2.16700865732810
5.11098672314498
5.25743522079534
3.96944046449902
4.10548440663106
2.36022516836146
3.79264217924416
3.20862804419936
2.95147661935102
3.93582493420653
3.55578559845026
4.46866457211007
5.70623301919051];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% d)) fit the 3rd degree polynomial

p=polyfit(xtr,ytr,3); % fit the polynomial to the trainig not the test data

% predicted value for xte
xte_pred=polyval(p,xte);

% calculate the training error
xtr_pred=polyval(p,xtr);
m=length(xtr);% no. of training data points
error_tr=sum((xtr_pred-ytr).^2)/m;


% test error
m=length(xte); % no of test points

error_te=sum((xte_pred-yte).^2)/m;

% print out the errors
fprintf("The training error obtained from 3rd order fit is %d",error_tr);
fprintf('\n');

fprintf("The test error obtained from 3rd order fit is %d",error_te);
fprintf('\n');

% plotting time

figure; % figure 1
hold on

% plot the training data
plot(xtr,ytr,'.','MarkerSize',10)
xlabel('x','FontSize',15)
ylabel('y','FontSize',15)
title(['Polynomial of degree 3 fit with ' num2str(error_tr) ' training error'],'FontSize',15)

% plot the fitted curve obtained from training data
plot(linspace(0,3,length(xtr_pred)),xtr_pred,'-r','LineWidth',2)

legend('Training data points','Fitted Curve of degree 3')
hold off


% Q.c))
figure; % figure 2
hold on
% plot the fitted curve obtained from training data
plot(linspace(0,3,length(xtr_pred)),xtr_pred,'-r','LineWidth',2)

% plot the regression line obtained from test data(xte,yte)
plot(linspace(0,3,length(xte_pred)),xte_pred,'-b','LineWidth',1.5)

title(['Polynomials of degree 3 with training error=' num2str(error_tr) ' test error=' num2str(error_te)],'FontSize',15)

legend('regression line from training','regression line from test data')

hold off




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%   Q.e)) degree 10

p=polyfit(xtr,ytr,10); % fit the polynomial to the trainig not the test data

% predicted value for xte
xte_pred=polyval(p,xte);

% calculate the training error
xtr_pred=polyval(p,xtr);
m=length(xtr);% no. of training data points
error_tr=sum((xtr_pred-ytr).^2)/m;


% test error
m=length(xte); % no of test points

error_te=sum((xte_pred-yte).^2)/m;

% print out the errors
fprintf("The training error obtained from 10th order fit is %d",error_tr);
fprintf('\n');

fprintf("The test error obtained from 10th order fit is %d",error_te);
fprintf('\n');

% plotting time

figure; % figure 3
hold on

% plot the traing data
plot(xtr,ytr,'.','MarkerSize',10)
xlabel('x','FontSize',15)
ylabel('y','FontSize',15)
title(['Polynomial of degree 10 fit with  ' num2str(error_tr) ' training error'],'FontSize',15)

% plot the fitted curve obtained from training data
plot(linspace(0,3,length(xtr_pred)),xtr_pred,'-r','LineWidth',2)

legend('Training data points','Fitted Curve of degree 10')
hold off


% Q.c))
figure; % figure 4
hold on
% plot the fitted curve obtained from training data
plot(linspace(0,3,length(xtr_pred)),xtr_pred,'-r','LineWidth',2)

% plot the regression line obtained from test data(xte,yte)
plot(linspace(0,3,length(xte_pred)),xte_pred,'-b','LineWidth',1.5)

title(['Polynomials of degree 10 with training error=' num2str(error_tr) ' test error=' num2str(error_te),],'FontSize',15)

legend('regression line from training','regression line from test data')

hold off
