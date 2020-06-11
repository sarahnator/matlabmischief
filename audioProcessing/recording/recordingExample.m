% from docs

% prompt for and play audio sample
% rec = audiorecorder;
% disp('Start speaking.')
% recordblocking(rec,3);
% disp('End of Recording.');
% player = audioplayer(rec);
% play(player);

% ok, but matlab's audio actually sucks
% rec = audiorecorder;
% disp('Start speaking.')
% recordblocking(rec,3);
% disp('End of Recording.');
% doubleArray = getaudiodata(rec);
% plot(doubleArray);
% title('Audio Signal (double)');
% % sound(doubleArray)

% import audacity files
fileFolder = fullfile('wavFiles');
% '*' for file pattern gives files + extra junk
dirOutput = dir(fullfile(fileFolder,'*.wav'));
for i=1:length(dirOutput)
    disp(dirOutput(i).name)
    % some processing here
end
