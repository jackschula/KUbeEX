function validInput = validInput(promptMsg)
% function to prompt user for a value between 0 and 1
    while true
        userInput = input(promptMsg);
        if isnumeric(userInput) && isscalar(userInput) && userInput >= 0 && userInput <= 1
            validInput = userInput;
            % checks for numeric scalar between 0 and 1
            break;
        else
            disp('Error: Please enter a value between 0 and 1.');
        end
    end
end