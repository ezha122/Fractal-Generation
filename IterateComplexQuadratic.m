% This function applies the function f(x) = x^ 2 + c for specified z and c
% values, this will continue until the absolute value of f(x) >= 3, 
% or if the maximum number of time this function is to be applied is 
% reached 
% input:  
% output: n, the number of times this function was applied before it
%         the speficied boundaries or 0 if the maximum number of iterations
%         was reached 
% Author: Mickey Mouse

function[n] = IterateComplexQuadratic(z,c,cutoff)

n = 0;

for i = 1:cutoff % loop to given amount of iterations
    f = z^2 + c;
    if abs(f) < 3 % if f remains within the boundaries, loop continues 
        z = f; % calculated f values ain line 15 becomes the new z value 
        n = n+ 1; % add one to counter every loop 
    else 
        % if f exceeds the boundaries and the maximum number of 
        % loops has not been reached, one is added to the counter and this value is returned
        n = n+ 1;         
        break
    end       
end 

% if the absolute value of f is within the boundaries and the maximum
% number of iterations has been reached then 0 will be returned. 
if abs(f) < 3 
    n = 0;
    
end

end