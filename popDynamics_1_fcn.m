function [P]=popDynamics_1_fcn(BR,DR,tinit,tfinal,delt,Pinit,Mann)
  %--------------------------------------------------------------------------
  %M(t) is constant .Find p(t) history.
  %formula for population growth:
  
  %dp/dt=change in population
  
  %dp/dt=(BR+Immigration)-(DR+Emigration)
  
  %dp/dt=(BR-DR)+Immigration-Emigration
  
  %dp/dt=(BR-DR)+Mann as Immigration-Emigration=Mann and M(t) is constant
  
  %dp/dt is an ordinary differential equation
  
  %the solution is
  
  %p(t)=((BR-DR)+Mann)*t+c where c is an integration constant
  
  %to find c you have to use the initial population that is Pinit
  
  %at tinit the population is Pinit
  
  %so, p(tinit)=((BR-DR)+Mann)*tinit+c=Pinit
  
  %c=Pinit-((BR-DR)+Mann)*tinit 
 
%therefore p(t)=((BR-DR)+Mann)*t+ Pinit-((BR-DR)+Mann)*tinit

%find nsteps and set up output data
t=tinit:delt:tfinal; %time vector

P=((BR-DR)+Mann)*t+ Pinit-((BR-DR)+Mann)*tinit;
 

end
