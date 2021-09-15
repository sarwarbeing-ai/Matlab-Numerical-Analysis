
%Q.1

%toy example to formulate the mathematical calculations

price=[1.99,2.89,11.89,15.49];
count=[15,29,17,35];
cost=[0.99,1.5,8,10];

%part1
%unit profit
profit=price-cost;

%part2

total_profit=dot(profit,count); %total profit

fprintf("Total profit without discount: ");
fprintf("%d ",total_profit);
fprintf("\n");
 
%part3

%15% discount that is price reduced by 15% for each unit

%unit price after 15% discount
 %Formula: suppose x is a number and there is 10% discount on it
 %then x would be after discount x-0.10*x
 
 %calculation done on every product price at the same time
price_disct=price-0.10*price;

profitDisct=price_disct-cost;


%part4

%sale volume increased by 15%

%formula : x+0.15*x where x is a volumne of a product

%calculation done on every product volume at the same time
countDisct=count+0.15*count;


%part 5

%total profit after discount 

total_profit=dot(countDisct,profitDisct);

fprintf("Total profit after 10 percent discount: ");
fprintf("%d",total_profit);
fprintf("\n");