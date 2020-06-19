addpath('wavFiles');
% import audacity files
fileFolder = fullfile('wavFiles');
dirOutput = dir(fullfile(fileFolder, '*.wav'));

numSignals = length(dirOutput);

% change first param based on num samples of signal if unknown length
% or specify maximum size to prevent resizing
multi_chan = zeros(100763, numSignals);

for i=1:numSignals
    % because there's a problem with 6 and 8
    if i ~= 6 && i ~= 8
         % disp(dirOutput(i).name)
        [multi_chan(:, i)] = audioread(dirOutput(i).name);
    end
end

