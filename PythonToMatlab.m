% call the main function
main()

function main()
disp('global_search.py3 running') % use disp
xmin = -1.0; % use semi colon
xmax = 1.0;
ymin = -1.0;
ymax = 1.0;
xbest = xmin;
ybest = ymin;
dx = 0.001;
dy = 0.001;
zbest = f(xbest,ybest); % call function f
disp(['zbest=',num2str(zbest)])% [] use to concatenate strings
for x=xmin:dx:xmax % use colon operator to create vector
for y=ymin:dy:ymax
z = f(x,y);
if(z < zbest)
zbest = z;
xbest = x;
ybest = y;
end
end
end


disp(['xbest=',num2str(xbest)])
disp(['ybest=',num2str(ybest)])
disp(['zbest=',num2str(zbest)])



disp('global_search.py3 finished')
end


function z=f(x,y)

% just remove math ,thats it everything remains same
z=exp(sin(60.0*x)) + sin(50.0*exp(y)) +sin(80.0*sin(x)) +sin(sin(70.0*y))-sin(10.0*(x+y)) + (x*x+y*y)/4.0;
end
