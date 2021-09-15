% create the temperature.txt file
% just for demonstration
file = fopen( 'temperature.txt', 'w' ); % open the file

fprintf(file, 'Rolla:%d %d %d %d %d\n',21,2,10,13,17);
fprintf(file, 'Chicago:%d %d %d %d %d\n',8,5,9,16,16);
fprintf(file, 'Orlando:%d %d %d %d %d\n',23,21,29,26,27);

% close the file 
fclose(file);

% use try and catch for error handling
try
    file=fopen('temperature.txt','r');
    
    % create the file tempformation.txt
    file1=fopen('tempformation.txt','w');
    
catch ME
    
end
