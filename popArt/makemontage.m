% montage
addpath sampleOutputs

fileFolder = fullfile('sampleOutputs');
dirOutput = dir(fullfile(fileFolder, '*.png'));
fileNames = string({dirOutput.name});
mont = montage(fileNames(1:16));

% save to file (!use gcf to save colormap)
fig = gcf;
removeToolbarExplorationButtons(fig);
filename =  'montage.png';

% save within sampleOutputs folder
baseFileName = sprintf(filename, fig);
fullFileName = fullfile('sampleOutputs', baseFileName);
exportgraphics(fig, fullFileName);


