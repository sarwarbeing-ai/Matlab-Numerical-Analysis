% spmd version
% to execute code in parallel ,you must first create a pool of
% matlab workers
parpool(3);
spmd
% 1.ask the user for number of simulations(M)
M=input("How many times you want to repeat the process?: ");

% 2. how many dice
N=input("How many dice you would like to throw?: ");

% 3. which sum
Throw=input("For which sum you wish to have probability: ");

% check whether the inputs by the user valid or not
if M<=0 || N<=0 || Throw<2
    % error function will print the message and 
    % immediately stop the execution of the rest codes
    error("You have entered wrong input")
end

C=0; % counter

% repeated 4 to 6 steps M times
% execute for-loop iterations in parallel
for i=1:M
    % 4. N random numbers
    % 1,N use for to have N numbers
    dice=randi([1,6],1,N); % random integers in the range 1 to 6

    % 5. sum up all the values
    D=sum(dice);

    % 6. check if D== Throw
    
    if D==Throw
       C=C+1; % increment the counter by 1
    end
end

% 8. probability of throwing a specific value Throw
prob=(C/M)*100; % converted into percentage

% [] used for concatenation of strings
disp(['The probability of throwing a specific value ', num2str(Throw),' is ',num2str(prob),'%'])
end

