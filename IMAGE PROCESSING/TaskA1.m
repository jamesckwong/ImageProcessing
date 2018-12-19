clear all ;
fileName = uigetfile('palmdown.png');
palmdownImageFile = imread(fileName);


palmdownGreyScale = rgb2gray(palmdownImageFile);

subplot(2,2,1);
imshow(palmdownImageFile);
subplot(2,2,2); 
imshow(palmdownGreyScale);

%state the equation and the name 