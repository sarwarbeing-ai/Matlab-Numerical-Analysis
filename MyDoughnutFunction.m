function [Volume,Area] = MyDoughnutFunction(inRadius,outRadius)

% instead of using 22/7 use pi
% from matlab otherwise you will not have exact anwer as given in the
% question
% the answer differe due to loss of precision
Volume=(1/4)*(pi)*(pi)*(outRadius*outRadius-inRadius*inRadius)*(outRadius-inRadius);

Area=(outRadius*outRadius-inRadius*inRadius)*(pi)*(pi);

% no need for fprintf statement here

end