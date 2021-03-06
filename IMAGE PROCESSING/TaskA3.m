clear all;
close all;
clc;
fileName = uigetfile('palmdown.png');
palmdownImageFile = imread(fileName);


r = palmdownImageFile(:, :, 1); 
g = palmdownImageFile(:, :, 2); 
b = palmdownImageFile(:, :, 3); 


orangeThumbBinary = r > 142 & r < 208 & g > 68 & g < 109 & b < 54; 
orangeThumbIsolated = palmdownImageFile;
orangeThumbIsolated(repmat(~orangeThumbBinary,[1 1 3])) = 0; 


yellowIndexBinary = r > 174 & r < 235 & g > 142 & g < 206 & b > 33 & b < 108;
yellowIndexIsolated = palmdownImageFile;
yellowIndexIsolated(repmat(~yellowIndexBinary,[1 1 3])) = 0;


blueMiddleBinary = r > 5 & r < 30 & g > 40 & g < 60 & b > 70 & b < 170;
blueMiddleIsolated = palmdownImageFile;
blueMiddleIsolated(repmat(~blueMiddleBinary,[1 1 3])) = 0;


greenRingBinary = r > 0 & r < 50 &  g > 70 & g < 100 & b > 70 & b < 105;
greenRingIsolated = palmdownImageFile;
greenRingIsolated(repmat(~greenRingBinary,[1 1 3])) = 0;

redPinkyBinary = r > 160 & r < 200 & g > 90 & g < 120 & b > 84 & b < 119;
redPinkyIsolated = palmdownImageFile;
redPinkyIsolated(repmat(~redPinkyBinary,[1 1 3])) = 0;

figure;
subplot(6,2,1);
imshow(orangeThumbBinary);colormap gray;axis image;title('i. Binary Masks'); 
subplot(6,2,2); 
imshow(orangeThumbIsolated);colormap gray;axis image;title('ii. Isolated Pixels');
subplot(6,2,3);
imshow(yellowIndexBinary);
subplot(6,2,4);
imshow(yellowIndexIsolated);
subplot(6,2,5);
imshow(blueMiddleBinary);
subplot(6,2,6); 
imshow(blueMiddleIsolated);
subplot(6,2,7);
imshow(greenRingBinary);
subplot(6,2,8);
imshow(greenRingIsolated);
subplot(6,2,9);
imshow(redPinkyBinary);
subplot(6,2,10); 
imshow(redPinkyIsolated);










