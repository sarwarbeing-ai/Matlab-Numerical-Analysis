NYC = [33 33 18 29 40 55 19 22 32 37 58 54 51 52 45 41 45 39 36 45 33 18 19 19 28 34 44 21 23 30 39];

DEN = [39 48 61 39 14 37 43 38 46 39 55 46 46 39 54 45 52 52 62 45 62 40 25 57 60 57 20 32 50 48 28];


% part a average temperature
avg_NYC=mean(NYC);
disp('Average temperature in NYC was ')
disp(round(avg_NYC))

avg_DEN=mean(DEN);
disp('Average temperature in DEN was ')
disp(round(avg_DEN))


% part b

% no of days above average in NYC
days_NYC=sum(NYC>avg_NYC);% NYC>avg_NYC will be a logical vector of 0's and 1's
                          % 1's are those whose temp is greater
                          % than avg_NYC
                          
disp('Number of days that the temperature was above average in NYC is ')
disp(days_NYC)


days_DEN=sum(DEN>avg_DEN);
disp('Number of days that the temperature was above average in DEN is ')
disp(days_DEN)



% part c
% no. of days that the temperature in Denver was

% heigher than the temperature in NYC

days_DEN_NYC=sum(DEN>NYC);% since 
                          % both DEN and NYC are vectors therefore
                          % DEN>NYC will be a vector of 0's and 1's
                          % here > is a element by elemeny compatison
                          % eg: [4,6,7]>[5,3,0]
                          % thsi is equivalent to [0,1,1]
                          % as 4 is not greater than 5
                          % 6 is greater than 3 ,7 is greater than 0
 
                          
                          
                          
                          
 disp('No. of days that the temperature in Denver was heigher than the temperature in NYC is ')
 disp(days_DEN_NYC)
                          

