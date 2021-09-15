function mycompdgt(x,y)
str=strsplit(num2str(x,y,16));
str1=('');
str2=('');
w1=regexp(str1,'+','match');
w2=regexp(str2,'+','match');
intersect(w1,w2)
ix=strfind(str,'_');
commonstr=str(1:ix(2)-1);
common(commonstr)
end