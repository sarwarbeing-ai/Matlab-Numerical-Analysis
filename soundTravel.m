% display the menu
disp("Menu:")
disp("1.Carbon dioxide")
disp("2.Air")
disp("3.Helium")
disp("4.Hydrogen")

% ask the user for choice from the menu
choice=input("Enter your choice(1,2,3, or 4): ");

% check if the choice is invalid
% ismemebr function returns true(1) if choice is in [1,2,3,4]
% ~ this is the negation
if ~ismember(choice,[1,2,3,4])
    error("You have entered wrong input: Enter any number from [1,2,3,4]")
else
    % ask the user for number of seconds
    seconds=input("Enter number of seconds(0 to 30): ");
    
    % check if the seconds is invalid
    if seconds<0 || seconds>30
        error("You have entered wrong number of seconds:Select any number from 0 to 30")
    else
        if choice==1
            distance=258.0*seconds;
            disp(['The source of the sound from the detection location is ',num2str(distance),' meters'])
        elseif choice==2
            distance=331.0*seconds;
            disp(['The source of the sound from the detection location is ',num2str(distance),' meters'])
        elseif choice==3
            distance=972.0*seconds;
            disp(['The source of the sound from the detection location is ',num2str(distance),' meters'])
        else
            distance=1270.0*seconds;
            disp(['The source of the sound from the detection location is ',num2str(distance),' meters'])

        end
    end
end