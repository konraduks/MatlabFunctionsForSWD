function plot3D_desc(X, Y, Z, Description)

Marker = ['o','+','*','.','x','s','d','^','v','>','<','p','h'];
ColorList = ['yellow','magenta','cyan','red','green','blue','black','magenta','cyan','red','green','blue','black'];
%PLOT3D Summary of this function goes here
%   Detailed explanation goes here

%Test = {'Pierwszy','Drugi','Pierwszy','Czwarty','Drugi','Drugi','Siodmy','8','9','10','11','12','13','14','15','16'};
%X = [1,5];
%Y = [2,6];
%Z = [4,8];

%scatter3(X,Y,Z);
%hold on;
%X = [10,5];
%Y = [22,6];
%Z = [42,8];
%scatter3(X,Y,Z);
%disp(Description);
Description = cellstr(Description);
%disp('po cellowaniu');
%disp(Description);
ResultClass = {};
resultIterator = 1;
MarkerIterator = 1;
[y,x] = size(Marker);
%for n = 2:50
%   scatter3(n,n*n,n,120,'b',Marker(mod(n,x)+1)); 
%   hold on;
%end
%[a, toLoop] = size(Test);
%[a, toLoop] = size(Description);
[toLoop, a] = size(Description);
%disp(Test);
for i = 1:toLoop
    %if(any(ResultClass == Test(i)))
    %disp(Test(i));
    %disp(Description(i));
    if(find(ismember(ResultClass, Description(i))))
        %disp('cos');
        MarkerIterator = find(ismember(ResultClass, Description(i)));
        %disp(MarkerIterator);
    else
        %disp('else');
        %ResultClass{resultIterator,1} = Test(i);
        ResultClass(resultIterator) = Description(i);
        MarkerIterator = resultIterator;
        %legend(Test(i));  
        %disp([Test(i)]);        
        resultIterator = resultIterator+1;              
    end
    %disp(MarkerIterator);
    %scatter3(i,i*i,i,120,'b',Marker(mod(i,x)+1));
    h(MarkerIterator) = scatter3(X(i),Y(i),Z(i),120,'black',Marker(MarkerIterator));
    hold on;
    %disp('koniec');
end
legend(h, ResultClass);

%hold off
%legend('to jest legenda');
end
