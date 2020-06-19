addpath('wavFiles');
% import audacity files
fileFolder = fullfile('wavFiles');
% '*' for file pattern gives files + extra junk
dirOutput = dir(fullfile(fileFolder, '*.wav'));

[multi_chan(:, 1), fs] = audioread(dirOutput(1).name);
[multi_chan(:, 2), fs] = audioread(dirOutput(2).name);
[multi_chan(:, 3), fs] = audioread(dirOutput(3).name);
[multi_chan(:, 4), fs] = audioread(dirOutput(4).name);
[multi_chan(:, 5), fs] = audioread(dirOutput(5).name);
[multi_chan(:, 7), fs] = audioread(dirOutput(7).name);
% There's apparently a size problem with chan 6 and chan 8 - rerecord...?

plot(multi_chan);
title('6 Channel Horizontal Concatentation');
legend({'chan1', 'chan2', 'chan3', 'chan4', 'chan5', 'chan7'}, 'location', 'southeast')
saveas(gcf, 'horCat.png');

% Matlab supports one & two channel audio
% play single channel
sound(multi_chan(:, 2), fs)

% two channel-audio
sound(multi_chan(:, 1:2), fs)