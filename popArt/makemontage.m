% montage
addpath sampleOuputs

fileFolder = fullfile('sampleOuputs');
dirOutput = dir(fullfile(fileFolder, '*.png'));
fileNames = string({dirOutput.name});
dirOuput(7).name
mont = montage(fileNames(1:16));

% save to file (!use gcf to save colormap)
fig = gcf;
removeToolbarExplorationButtons(fig);
filename =  'montage.png';

% save within sampleOutputs folder
baseFileName = sprintf(filename, fig);
fullFileName = fullfile('sampleOuputs', baseFileName);
exportgraphics(fig, fullFileName);


