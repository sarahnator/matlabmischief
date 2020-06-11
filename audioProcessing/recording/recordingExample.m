% from docs

% prompt for and play audio sample
% rec = audiorecorder;
% disp('Start speaking.')
% recordblocking(rec,3);
% disp('End of Recording.');
% player = audioplayer(rec);
% play(player);


rec = audiorecorder;
disp('Start speaking.')
recordblocking(rec,3);
disp('End of Recording.');
doubleArray = getaudiodata(rec);
plot(doubleArray);
title('Audio Signal (double)');
% sound(doubleArray)