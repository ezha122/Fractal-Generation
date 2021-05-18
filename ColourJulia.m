% This function helps with colour in the image? 
% input: 2D array describing each point, these values are the results from
%        the IterateComplexQuadratic function stored into the array. If the
%        point is in the set, it is 0 in the array. If not, then it is the
%        result of the function 
%        2D array, r by 3 array. this is a colour map and r corresponds to
%        the maximum number of iterations for the Julia set 
% output: RGB image of the Julia set, this is a n by n by 3 array of uint8
%         values 
% Author: Mickey Mouse

function[image] = ColourJulia(array1,array2)

[row,col] = size(array1);% find size of the array of Julia set values 
image = zeros(row,col,3); % create a zeros array using the size found above

for i = 1:row
    for j = 1:col
        % only change the values that are not a part of the Julia Set 
        if array1(i,j) > 0 
            % find the value of the point, this is the row number to be 
            % used from the colour map
            a = array1(i,j); 
            % for each point in the 3D array, the k value of the point
            % corresponds to the column value of the colour map. this is
            % the value that is extracted and stored into the 3D arrat
            image(i,j,1) = array2(a,1);
            image(i,j,2) = array2(a,2);
            image(i,j,3) = array2(a,3);
        end     
    end    
end

% the entire array is multiplied by 255 to create the colour array 
image = image .* 255; 
image = uint8(image); % the array values are rounded 

end