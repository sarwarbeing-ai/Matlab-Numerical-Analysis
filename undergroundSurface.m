% ask the user for length,width,average depth
lengthh=input("Enter length: ");
width=input("Enter width: ");
average_depth=input("Enter average depth: ");

LentghProductWidth=lengthh*width;

LengthPlusWidth=lengthh+width;

perimeter=2*LengthPlusWidth; % perimter

volume=LentghProductWidth*average_depth; % volume


area=2*LengthPlusWidth*average_depth+LentghProductWidth; % underground surface area

disp(['Perimeter=',num2str(perimeter)]) % [] use for concatenation of strings
                                       % num2str will convert number to
                                       % string
                                       
disp(['Volume=',num2str(volume)])

disp(['Underground Surface Area=',num2str(area)])

                           
                                       
                                       
                                       
                                       
                                       
                                    