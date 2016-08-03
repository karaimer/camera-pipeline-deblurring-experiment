close all
clear all

image = im2double(imread('.\NIKOND40_0037_stage4.tif')); %image; 

%Iblur = imgaussfilt(image, 5);%This one was a gaussian blur.
H = fspecial('motion',50,0);%This one was a motion blur.
%MotionBlur = imfilter(image,H,'replicate');
blurred = imfilter(image, H, 'conv', 'circular');

figure, imshow(image);
figure, imshow(blurred);
imwrite(blurred,'NIKOND40_0037_stage4_filtered.tif');

wnr1 = deconvwnr(blurred, H, 0.05);
figure, imshow(wnr1);
title('Restored Image');
imwrite(wnr1,'NIKOND40_0037_stage4_defiltered.tif');
