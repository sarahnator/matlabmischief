addpath('wavFiles');
% import audacity files
fileFolder = fullfile('wavFiles');
dirOutput = dir(fullfile(fileFolder, '*.wav'));

numSignals = length(dirOutput);

% change first param based on num samples of signal if unknown length
% or specify maximum size to prevent resizing
multi_chan = zeros(100763, numSignals);

% alt multi_chan = [ in1; in2; in3; ...];
for i=1:numSignals
    % resize signal length for 6 and 8
    if i == 6 
        orig = audioread(dirOutput(i).name);
        [multi_chan(:, i)] = orig(1:100763,:);
    elseif i == 8
        orig = audioread(dirOutput(i).name);
        [multi_chan(:, i)] = [orig; zeros(4096,1)];
    else
        [multi_chan(:, i)] = audioread(dirOutput(i).name);
    end
end

audiowrite('multichan.wav', multi_chan, 44100);