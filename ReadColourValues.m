%This function reads a list of colours and the corresponding values and
% returns names in a cell array and values in a 2D array
% input: file name (string) containing an array that matches the colour
%        name to its values 
% output: cell array of colour names
%         2D array of colour values (r x 3)
% Author: Mickey Mouse

function[colour,values] = ReadColourValues(file)

fid = fopen(file, 'r+'); % open file 

if fid == -1 % if file cannot be found, Error Message is printed 
    fprintf(2, ['Error opening file %s.\n'], file);
else
    colour = {}; % empty cell array is created to store the colour names 
    values = []; % empty array is created to store colour values 
    
    % while the end of the line has not been reached the following functions will continue to run
    while ~feof(fid) 
        line = fgetl(fid); % each line is extracted one at a time 
        
        % line is split into separate parts and stored in an array 
        c = split(line); 
        
        % a function is applied to the second to last values in the array
        % and a function - str2num is applied onto each element in the
        % array as they were strings when extracted and split 
        % these new values are stored into the array created beforehand 
        values = [values; [cellfun(@str2num,c(2:end))]'];
        
        % the colour name, which is the first value in the array created by
        % splitting the line is stored into the cell array created
        % beforehand 
        colour = [colour; c{1}];
        
    end
    fclose(fid); % close file 
end

end