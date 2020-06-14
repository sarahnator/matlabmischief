# Image processing

## Resolution
Analogous to the sampling rate of an audio file.
- to store images in a computer you have to sample the reolution

## Image bitmap
A[i][j][k]
[i][j]  intensity - grayscale
[i][j][k] color - rgb

## Functions - Image manip
```matlab
A = imread('lena.bmp');
size(A)
//ans = 512 512 3 - type uint 8 to store 256 values

imshow(A) //show

U = flipud(A); //vert flip
L = fliplr(A); //horizontal flip
```
## RGB manip
Third dimestion in the matrix is the color.
Every color contains a red, green, and blue component
```matlab
//Only view the blue channel
B = A;
B(:,:,1) = 0;   //set red component to 0
B(:,:,2) = 0;   //set green component to 0
imshow(A)
imshow(B)   //Blue channel only visible - has nonzero values
imshow(B(:,:,1))    //pure black - no nonzero red values

//Green channel
G = A;
B(:,:,1) = 0;   //Red
B(:,:,3) = 0;   //Blue 
imshow(G)


//Red channel
R = A;
B(:,:,2) = 0;
B(:,:,3) = 0;
imshow(R)
```
## Convolution

