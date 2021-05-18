% This function attempts to find a colour name from a provided list and
% the values for the colour found are returned. this is case insensitive. 
% input: string containing name of colour 
%        cell array of colour names - each element is a name 
%        2D array of colour values, r x 3 size
% output: 1 x 3 array of colour values for colour to look up 
% Author: Mickey Mouse

function[foundvalues] = LookupColourValues(name,colournames,colourvalues)

comparenames = []; % create array to store logical values 

for i = 1:length(colournames)
    % strings compared and case is ignored 
    colour = strcmpi(colournames(i),{name}); 
    % logical results are stored into an array 
    comparenames = [comparenames, colour];
end

% find if there is a True result in the array and returns the position 
% in the array  
findcolour = find(comparenames == 1);

if isempty(findcolour) % if the array is empty, no True was found above
    fprintf(2, ['Colour not found.\n']) % Error message displayed 
    foundvalues = [0,0,0];% values returned for no found colours is (0,0,0)
else
    % using the position found in the array, this value is the
    % corresponding row in the colour value array that was given. 
    % this is extracted and stored in the returned array as the values
    % found.
    foundvalues = colourvalues(findcolour,:); 
end   


end