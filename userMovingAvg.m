function mvdata=userMovingAvg(input_data,k)
% input_data is the one dimensional data vector
% k is the window size

% pad k-1 zeros at the begining and at the end of the input of 
% vector to get the same size moving average data

pad_data=[zeros(1,k-1) input_data zeros(1,k-1)];

for i=1:length(input_data)
    mvdata(i)=sum(pad_data(i:i+k-1))/k; % average of k number of data
end
end
