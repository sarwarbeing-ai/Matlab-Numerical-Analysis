
% ask the user for dna sequence
% and nucleotide

dna_sequence=input('Enter the sequence: ','s');
nucleotide=input('Which nucleotide do you want to remove?: ','s');

Sequences=remove_nucleotide(dna_sequence,nucleotide)



function updated_sequence=remove_nucleotide(dna_sequence,nucleotide)
    
    % there is a shortcut way to remove 
    % specific nucleotide
    % use erase function from matlab
    % erase all the occurences of the nucleotide
    % if you want this solution uncomment the below line
    % and commented rest of the codes
    %updated_sequence=erase(dna_sequence,nucleotide);
    
    % another way
    % get the length of the dna_sequence
    n=length(dna_sequence);
    
    % initialze updated_sequence to 
    % an empty string
    updated_sequence='';
    
    % iterate over the sequence
    for i=1:n
        % check if the ith character is 
        % is the given nucleotide
        % if not
        if dna_sequence(i)~=nucleotide
            
            % modify uodated sequence
            % [] used to concatenate strings
            updated_sequence=[updated_sequence,dna_sequence(i)];
            
        end
    end
end
