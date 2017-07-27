function drawplot(x, y)
%DRAWPLOT Plot a curve from x and y arrays.
%   DRAWPLOT(X,Y) Plots a curve from x and y arrays in a MATLAB
%   figure window.  This file is used as an example
%   for the MATLAB Java Package product.

%   Copyright 2001-2007 The MathWorks, Inc.
%x = [1,2];
%y = [5,4];
%plot(x, y);
%https://www.mathworks.com/help/matlab/ref/scatter.html
wielkosc = 140;
c = linspace(1,10,length(x));
scatter(x,y,wielkosc,c,'p');

