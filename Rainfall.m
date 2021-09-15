function Rainfall(data)
    % data is a  vector of rainfall from Jan to Dec
    % 1.plot the pie plot
    % 2. histogram of rainfall
    
    % create cell array StringArrays of months
    StringArrays=["Jan","Feb","Mar","April","May","June","July","August","Sep","Nov","Dec"];
    
    % 1. pie plot
    % create a figure
    figure;
    labels=StringArrays;
    tiledlayout(1,2,'TileSpacing','compact'); % 1 row and 2 columns
    ax=nexttile; % an axes for tiled chart layout
    pie(ax,data) % pie chart
    title("Total rainfall for the year 2020 in Florida")
    l=legend(labels); % create legend
    l.Layout.Tile='east';
    
    
    % plot the histogram
    % first find the maximum and minimum rainfall months using find
    % function from matlab
    max_index=find(data==max(data));
    max_month=StringArrays(max_index);
    min_index=find(data==min(data));
    min_month=StringArrays(min_index);
    figure; % create a figure
    h=histogram(data,'NumBins',5,'BinWidth',1.5);
    xlabel("Rainfall range")
    ylabel("Number of Months")
    title(sprintf("The months with maximum and minimum rainfalls \n %s,%s resp.   and bin width=%d",max_month,min_month,h.BinWidth))
    
    
end
%data=[3.22,2.72,3.11,3.24,5.07,8.39,6.18,8.40,8.24,5.82,3.30,2.76]