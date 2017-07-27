function plot2D_desc(X, Y, Description)
%PLOT2D_DESC Summary of this function goes here
%   Detailed explanation goes here

Marker = ['o','+','*','.','x','s','d','^','v','>','<','p','h'];
Color = ['yellow','magenta','cyan','red','green','blue','black','magenta','cyan','red','green','blue','black'];

Description = cellstr(Description);

ResultClass = {};
resultIterator = 1;
MarkerIterator = 1;

[toLoop, a] = size(Description);

for i = 1:toLoop
   if(find(ismember(ResultClass, Description(i))))
       MarkerIterator = find(ismember(ResultClass, Description(i)));
   else
        ResultClass(resultIterator) = Description(i);
        MarkerIterator = resultIterator;
        resultIterator = resultIterator+1;  
   end
        h(MarkerIterator) = scatter(X(i),Y(i),120,'black',Marker(MarkerIterator));
        hold on;        
end
disp(i);
legend(h, ResultClass);

end

