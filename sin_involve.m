%Q.i))

%function f(x)=10+sin(x) the range of this function would be 9 to 11
%as -1<=sinx<=1


%a))

%domain for  sinx is -inf to inf so domain for  f would be -inf to inf

x=-10:0.5:10; % vector of real numbers from  -10 to 10 with 0.5 step size you can take any range 
%but for plotting purpose -10 to 10 has been taken

% short cut to create a vector use  start:step:stop


%b))

f=10+sin(x); % f will be a vector of same length as x 


%c,d and e))

figure %create a figure

%'-ob' is a blue solid line with circle markers

plot(x,f,'-ob','LineWidth',2,'MarkerSize',8,'MarkerEdgeColor','g','MarkerFaceColor','r')

xlabel("Real Numbers from -10 to 10",'FontSize',15)
ylabel("The value of the function f(x)=10+sin(x)",'FontSize',15)
xlim([-10 10])
ylim([9 11])

title("The plot of the function f(x)=10+sin(x)",'FontSize',14)




