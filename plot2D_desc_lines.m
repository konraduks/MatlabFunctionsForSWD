function plot2D_desc_lines(X, Y, Description, X_line, Y_line)
%PLOT2D_DESC_LINES Summary of this function goes here
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

%[toLoop, a] = size(X_line);
%disp(toLoop);
%disp(a);
[a, toLoop] = size(X_line);

for i = 1:2:toLoop
    xL = [X_line(i);X_line(i+1)];
    yL = [Y_line(i);Y_line(i+1)];
   plot(xL, yL); 
   hold on;
end

end
