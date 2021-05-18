% this function creates a custom colour map, with n shades of colour. this
% ranges from a specific start to end colour 
% Input: 1 x 3 array for starting colour 
%        1 x 3 array for ending colour , between 0 an 1 
%        n: number of rows to generate for the colour map
% Output: n x 3 array of colour map. Each row represents a colour
% precentage 
% Author: Mickey Mouse

function[ColourMap] = CreateColourmap(first,last,n)

ColourMap = zeros(length(first),n); % create empty array for colour map 

for i = 1:length(first)
    % for each row made, an equally spaced 1D array of n values ranging from
    % the start to end colours is made. 
    ColourMap(i,:) = linspace(first(i),last(i),n);
end            

ColourMap = ColourMap';

end