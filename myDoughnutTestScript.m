% print the header of the table
fprintf("Radius      Radius         Correct Value         Correctoutput\n")
[Volume1,Area1]=MyDoughnutFunction(1,2);
[Volume2,Area2]=MyDoughnutFunction(1,4);
[~,Area3]=MyDoughnutFunction(3,4); % here ignoring the output volume output
                                   % as it is not needed as per the
                                   % question
 
                                   
 % print out all the values
 fprintf('%d           %d              Volume1=%.4f          Area1=%.4f\n',1,2,Volume1,Area1) %.4f for four decimal point
 
 fprintf('%d           %d              Volume2=%.4f          Area2=%.4f\n',1,4,Volume2,Area2)
 fprintf('%d           %d              Area3=%.4f\n',3,4,Area3)