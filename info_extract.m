% part a)) load the data as matrix
BD=[1,18.8,39,30,96,80,784.55,145.08;
2,18.1,41,25,90,94,1053.48,133.93;
4,18.6,35,28,84,96,899.47,110.35;
5,22.4,18,26,94,95,827.34,142.39;
6,12,35,28,91,89,878.41,165.63;
8,13.6,37,28,79,95,835.5,139.91;
9,10.8,46,36,87,82,1068.73,167.02;
10,16.2,38,30,87,99,1137.87,151.48;
11,5.9,34,27,100,100,1273.89,136.05;
12,17.9,21,29,92,94,1160.13,144.18;
13,15.6,19,25,95,93,913.15,142.8;
15,17.5,54,41,82,87,861.18,120.92;
16,15.3,36,29,85,98,641.96,82.75;
17,12.8,36,34,94,96,803.11,139.15;
18,14.5,25,29,95,95,710.46,108.92;
19,15.7,17,25,97,87,649.06,114.47;
20,17.8,27,24,77,85,780.45,133.8;
21,21.4,19,23,78,76,872.51,137.13;
22,20.5,35,33,73,98,1281.55,194.78;
23,15.1,38,30,87,84,661.88,96.57;
24,12.5,34,32,71,99,1048.78,192.7;
25,8.2,23,35,87,80,1011.14,135.63;
26,14.1,24,28,95,77,1110.61,152.26;
27,9.6,23,29,88,88,777.18,133.35;
28,17.6,15,31,10,100,896.07,155.77;
29,16.1,43,34,92,84,790.32,144.45;
30,21.4,39,44,84,85,816.21,85.15;
31,14.9,13,35,93,90,732.28,114.82;
32,14.7,37,32,95,99,1029.87,138.71;
33,11.6,35,30,87,83,746.54,120.21;
34,11.2,16,28,86,78,1301.52,159.85;
35,18.4,19,27,67,98,869.85,120.75;
36,12.3,32,29,88,80,1234.31,150.01;
37,16.8,39,31,94,81,708.24,127.82;
38,23.9,23,42,99,86,688.75,109.72;
39,14.1,28,34,99,82,697.73,133.52;
40,19.9,32,29,92,94,881.51,178.86;
41,12.8,33,26,67,90,804.71,104.61;
42,18.2,50,31,96,88,905.99,153.86;
44,11.1,34,38,92,79,1148.99,148.58;
45,23.9,38,41,96,81,858.97,116.29;
46,19.4,31,33,98,86,669.31,96.87;
47,19.5,21,29,82,81,767.91,155.57;
48,19.4,40,38,91,87,1004.75,156.83;
49,11.3,43,16,88,96,809.38,109.48;
50,13.6,30,30,96,95,716.2,109.61;
51,12.7,19,27,87,88,768.95,153.72;
53,10.6,42,33,82,86,890.03,111.62;
54,23.8,34,28,97,87,992.61,152.56;
55,13.8,36,33,39,84,670.31,106.62;
56,17.4,42,32,81,90,791.14,122.04];


% mean vector
mean_vector=mean(BD(1:end,2:8)); %mean will be caloulated for each column except first column

fprintf("The mean vector containing the mean of each column except the state index column: [")
fprintf("%g ",mean_vector)
fprintf("]\n")

disp("******************************************")


%standard deviation for each column except the first column

s_deviation=std(BD(1:end,2:8));
fprintf("The standard deviation vector containing the standard deviation of each column except the state index column: [")
fprintf("%g ",s_deviation)
fprintf("]\n")

disp("***************************************************")



% part b)) which state had the lowest losses per insured drivers

% per insured drivers is  the last column that is 8th column

[lowest,lowest_index]=min(BD(1:end,8));

fprintf("The state that had the lowest losses per insured drivers is ")
fprintf("%d ",lowest_index)
fprintf("\n")
disp("**********************************************************");



% part c)) 

% indicates the 5 states(by index) for the highest number of drivers involved in fatal collisions per billion miles
% this problem is asking for the top 5 states in terms of the highest number of DIFC per billion miles
% the second column DIFC per billion in miles is in percentage so 
% highest number of drivers indicating the highest percentage

% first find the top 5 highest percentage from the second column

sort_DIFC_per_billion=sort(BD(1:end,2),'descend'); % sort function will sort the array in descending order
top_five=sort_DIFC_per_billion(1:5);
bolean_vector=ismember(BD(1:end,2),top_five); %check whether each element of second column is member of top_five  or not 


% now use boolean masking to extract the top five states
state=BD(1:end,1);
top_5_state=state(bolean_vector);

fprintf("The top five state with heighest DIFC per billion miles is [ ")
fprintf("%g ",top_5_state)
fprintf("]\n")
disp("**********************************************************");



%part d))

% top 5 states with the highest percentage of DIFC  who were alcohol-impaired
% alcohol-impaired is the 4th column
% the same procedure as applied in part c)) will be used here

sort_DIFC_alcohol_impaired=sort(BD(1:end,4),'descend');
top_five=sort_DIFC_alcohol_impaired(1:5); % sort function will sort the array in descending order

bolean_vector=ismember(BD(1:end,4),top_five); %check whether each element of 4th column is member of top_five  or not 


% now use boolean masking to extract the top five states

state=BD(1:end,1);
top_5_state=state(bolean_vector);

fprintf("The top five state with heighest percentage of DIFC who were alcohol impaired is [ ")
fprintf("%g ",top_5_state)
fprintf("]\n")
disp("**********************************************************");