%*********************************************
% Nokia RTTL Composer: User has to enter his
% note in a string and the output is a
% <note_name>.wav file that can be played
%*********************************************
 

 % Taking the note as input from the user %
noteStr = input('Enter your RTTTL Note: ', 's');

    % ***Some processing on the note string to separate its sections*** %
        % Section 1. Name
        %         2. Defaults (Duration, Octave, Tempo)
        %         3. Note
    
        
% Getting note name %
note_name = extractBefore (noteStr,':'); 

% Getting note default values and storing them in an array of strings
% note_defaults -> (1) = Duration
%                  (2) = Octave
%                  (3) = Tempo

dfs = extractBetween (noteStr,':',':');
note_defaults = split (dfs,',');
for index = 1:length(note_defaults)
    note_defaults(index) = extractAfter(note_defaults(index),'=');
end

% Getting the entered note and splitting it into
% multiple strings stored inside an array
note= extractAfter (noteStr,':');
note= extractAfter (note,':');
note = split (note,',');
note_char = char(note);

% Checking if a single note has the duration at its start. If yes, do
% nothing. If no, add the default duration at the first of the note.
for index = 1:length(note_char)
        element = string(note_char(index,1));
        if ((element >= string ('A') && element <= string ('Z')) || (element >= string ('a') && element <= string ('z')))
        note(index) = strcat(note_defaults(1),note(index));
        end
end
note_char = char(note);

% Checking if a single note has the octave at its end. If yes, do
% nothing. If no, add the default octave at the last of the note.
for index = 1:length(note_char)
        last=strlength(note(index));
        element = string(note_char(index,last));
        if ((element >= string ('A') && element <= string ('Z')) || (element >= string ('a') && element <= string ('z')) || element == string('#') || element == string('.'))
        note(index) = strcat(note(index),note_defaults(2));
        end
end