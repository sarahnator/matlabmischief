img = imread('wtfIcon.png');

% grayscale
%  imgGray = rgb2gray(img);

%  binary img 
level = 0.6091;
imgThresh  = imbinarize(imgGray,level);
% imshowpair(img, imgThresh, 'montage');

% use random color map function from imtool
colorOps = {'jet', 'autumn', 'bone','colorcube', 'cool', 'copper', 'flag','gray', 'hot', 'lines', 'parula', 'pink', 'prism', 'spring','summer', 'winter'};
op = string(colorOps(randi(size(colorOps,2))));
imshow(imgThresh); 
colormap(colormap(op));

% save to file (!use gcf to save colormap)
fig = gcf;
exportgraphics(fig, 'out.png');
