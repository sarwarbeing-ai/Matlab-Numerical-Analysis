clear;clc;close all;
nCities=6;
locCities=[0,0;50,500;100,200;300,50;350,500;450,200];
cpm=14.25;
route=[1,3,5,2,4,6];

format long g % to print in long format ,without exponential notation
% call the function
[costArr,routeCost]=routingCities_1_fcn(nCities,locCities,cpm,route)

function [costArr,routeCost]=routingCities_1_fcn(nCities,locCities,cpm,route)
% the distance between two cities would be 
% euclidean distance
% that is norm(city1-city2)

% calcuate costArr
for i=1:nCities
    for j=1:nCities
        if i==j
            costArr(i,j)=0; % cost between a city and itself
        else
            % euclidean distance
            dist=norm(locCities(i,:)-locCities(j,:));
            
            cost=dist*cpm; % if distance is in miles
            
            % otherwise convert dist to miles by dividing 1.60934
            % that is dist=dist/1.60934 as 1 mile=1.60934 km
            
            costArr(i,j)=cost; % cost bewteen city i and city j
            
        end
    end
end


% calculate the routeCost
routeCost=0;
for index=1:length(route)-1
    
    % find the distance
    city=route(index); % get the index of the city at index
    city2=route(index+1); % get the next city index
    dist=norm(locCities(city,:)-locCities(city2,:));
    cost=dist*cpm;
    
    routeCost=routeCost+cost;
    
end
end


