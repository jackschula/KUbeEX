function validInput = promptPositiveNumeric(promptMsg)
% function to prompt user for a positive numeric value
    validInput = input(promptMsg);
    while ~(isnumeric(validInput) && isscalar(validInput) && validInput > 0)
        % if any condition is false the loop continues until true
        disp('Error: Please enter a positive numeric value.');
        validInput = input(promptMsg);
    end
end