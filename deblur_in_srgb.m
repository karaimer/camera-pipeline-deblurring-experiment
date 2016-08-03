close all
clear all

image = imread('.\NIKOND40_0037_stage4_filtered_run_through11_16bit.tif'); %image; 
image2 = uint8(image / 256);
H = fspecial('motion',50,0);%This is a motion blur.

wnr1 = deconvwnr(image2, H, 0.05);
figure, imshow(wnr1);
title('Restored Image');
imwrite(wnr1,'NIKOND40_0037_stage4_filtered_run_through11_16bit_defiltered.tif');
