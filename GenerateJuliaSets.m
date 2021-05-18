% This fucnions generates Julia Sets 
% input: a 1D array for the values that ar to be used to make a Julia set,
%        each value has one set produced for it 
%        n is the size of the image array created as well as the size of
%        the grid used 
%        2D array, this is the colourmap that will be used. r by 3 size, r
%        is the number of iterations for creating Julia sets 
% output: cell array that stores the RGB image for the corresponding
%         complex values from the 1D array. 
% Author: Mickey Mouse

function[Array] = GenerateJuliaSets(array,n,colourmap)

% cutoff is the same as the number of colourmap rows 
cutoff = size(colourmap,1); 
% create array to store values in for every image produceded for each 
% complex value 
grid = zeros(n,n); 

image = zeros(n,n,3); % 3D array for the image 

Array = {}; % stores each RGB image 

col = size(array,2); 

for i = 1:col
    % create the complex grid using the CreateComplexGrid function
    grid = CreateComplexGrid(n); 
    % calculate value of points and whether it is a part of the Julia set
    % or not usint the JuliaSetPoints function and store this in another
    % array 
    JuliaArray = JuliaSetPoints(grid,array(i),cutoff);
    
    % image is created using ColourJulia function, with the colourmap given
    % and the newly made array of all the Julia set points 
    image = ColourJulia(JuliaArray,colourmap);
    image = uint8(image); % values are rounded 
    
    Array = [Array,image]; % new image is stored in the cell array 
end

end