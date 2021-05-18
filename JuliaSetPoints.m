% this function determines whether a grid point is a member of the Julia
% Set with a specified complex value of c 
% input: 2D array with grid values 
%        c: specified complex value - used to generate particular Julia Set 
%        cutoff value determining the maximum number of iterations to
%        perform
% output: 2D array  
% Author: Mickey Mouse

function[grid] = JuliaSetPoints(array,c,cutoff)

[row,col] = size(array); % size of the array given is found 
% zeros grid is made to be the same size as the array given 
grid = zeros(row,col); 

for i = 1:row 
    for k = 1:col
        % for every point in the array, the IterateComplexEquation function
        % will be applied to the value of the point, the complex value
        % given, and the cutoff. 
        % this is then stored into the zeros grid made beforehand 
        grid(i,k) = IterateComplexQuadratic(array(i,k),c,cutoff);
    end    
end

end