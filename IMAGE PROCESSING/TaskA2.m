clear all;
close all;
clc;

fileName = uigetfile('palmdown.png');
palmdownImageFile = imread(fileName);

palmdownGreyScale = rgb2gray(palmdownImageFile);
palmdownGreyScaleHist = imhist(palmdownGreyScale);

palmdownR = palmdownImageFile(:,:,1);
palmdownG = palmdownImageFile(:,:,2);
palmdownB = palmdownImageFile(:,:,3);

palmdownRedChannelHist = imhist(palmdownR);
palmdownGreenChannelHist = imhist(palmdownG);
palmdownBlueChannelHist = imhist(palmdownB);

greyScaleArithmeticMean = mean2(palmdownGreyScale);
rArithmeticMean = mean2(palmdownR);
gArithmeticMean = mean2(palmdownG);
bArithmeticMean = mean2(palmdownB);

figure;

subplot(1,2,1);
plot(0:255, palmdownRedChannelHist, 'r','LineWidth', 1);hold on
plot(0:255, palmdownGreenChannelHist, 'g','LineWidth', 1);hold on
plot(0:255, palmdownBlueChannelHist, 'b','LineWidth', 1);
xlabel('Intensity', 'FontSize', 14); ylabel('Normalised Count','FontSize',14);
xlim([0 255]);
rgbHistYLength = get(gca,'YLim');
ylim([0 max(palmdownRedChannelHist)]);
line([rArithmeticMean,rArithmeticMean],rgbHistYLength,'Color','r','LineWidth', 1,'LineStyle', '--');hold on
ylim([0 max(palmdownGreenChannelHist)]);
line([gArithmeticMean,gArithmeticMean],rgbHistYLength,'Color','g','LineWidth', 1,'LineStyle', '--');hold on
ylim([0 max(palmdownBlueChannelHist)]);
line([bArithmeticMean,bArithmeticMean],rgbHistYLength,'Color','b','LineWidth', 1,'LineStyle', '--');


subplot(1,2,2);
plot(0:255, palmdownGreyScaleHist, 'black','LineWidth', 1);
xlabel('Luminance', 'FontSize', 14);ylabel('Normalised Count','FontSize',14);
xlim([0 255]);
ylim([0 max(palmdownGreyScaleHist)]);
greyScaleHistYLength = get(gca,'YLim');
line([greyScaleArithmeticMean,greyScaleArithmeticMean],greyScaleHistYLength,'Color','black','LineWidth', 1,'LineStyle','--');


