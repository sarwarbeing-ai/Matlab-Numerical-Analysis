function correctchoice = multiplechoiceproblem;
question = 'Which of the following is the best definition of a probability model?';
answerlist = {...
'A probability model is somone who models probabilistic concepts.',...
'A probability model is a collection of probability distributions.',...
'A probability model is a function of the observed data.',...
'A probability model is a probability distribution.',...
'A probability model is a collection of free parameters.',...
'A probability model is a data set.',...
'A probability model is an abstract representation of the training procedure for a learning machine.',...
'A probability model is a probability density function with estimated parameters.',...
};
correctchoice = 2; % first choice is not legible as a probability model is a mathematical
                   % representation involving probabilities ,it's not
                   % someone
                   % third choice is not legeible as it says probability
                   % model is a function but it does not say what kind of
                   % function 
                   % fourth choice is also not true as a model can contains
                   % more than one probability distribution
                   % fifth choice is also not true as 
disp('QUESTION:')
disp(question);
answerlistdim = length(answerlist);
for j = 1: answerlistdim,
disp( [num2str(j),') ', answerlist{j}]);
end;
disp(' ');
disp('CORRECT ANSWER:');
disp([num2str(correctchoice),') ', answerlist{correctchoice}]);

end