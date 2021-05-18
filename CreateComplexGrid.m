% This function creates a 2D n x n array that syores complex values from a
% square grid of equally placed points in the complex plane. This grid is
% bounded -2 <= x <= 2 and -2i <= y <= 2i
% input: n (positive integer that specifies number of rows and columns 
%        for the array)
% output: n x n array, 2D. Contains equally spaced complex values representing a
%         grid over a complex plane. 
% Author: Mickey Mouse

function [ComplexGrid] = CreateComplexGrid(n)

 %create an array of n values that are equally spaced between the x and y
 %boundaries separately 
x = linspace(-2,2,n); 
y = linspace(2i,-2i,n);

% create a zeros grid to store the complex values calculated above
ComplexGrid = zeros(n,n); 


for i = 1:n % working with one value in the y plane at a time 
    % each x value from left to rightis added to the y value to create 
    % separate values that are equally spaced apart on the graph
    % each value is then stored in the corresponding position in the zeros
    % grid 
    ComplexGrid(i,:) = x(1:n) + y(i);
end    
