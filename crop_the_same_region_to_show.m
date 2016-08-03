close all
clear all


stage11= imrotate(im2double(imread('.\NIKOND40_0037_stage4_filtered.tif')).^(1/2.2),-90);
stage4 = imrotate(im2double(imread('.\NIKOND40_0037_stage4_defiltered.tif')).^(1/2.2),-90);
stage4a = imread('.\stage4_birds_filtered_run_through11_16bit.tif');
stage4b = imread('.\stage4_birds_defiltered_run_through11_16bit.tif');
stage4c = imread('.\stage4_birds_filtered_run_through11_16bit_defiltered.tif');
[stage11_crop, rect] = imcrop(stage11);
% figure, imshow(stage11);
% figure, imshow(stage4);
% imhist(I(rect(1):rect(1)+rect(3),rect(2):rect(2)+rect(4),:))
stage11_croped = stage11(rect(2):(rect(2)+rect(4)),rect(1):(rect(1)+rect(3)),:);
stage4_croped = stage4(rect(2):(rect(2)+rect(4)),rect(1):(rect(1)+rect(3)),:);
stage4_cropeda = stage4a(rect(2):(rect(2)+rect(4)),rect(1):(rect(1)+rect(3)),:);
stage4_cropedb = stage4b(rect(2):(rect(2)+rect(4)),rect(1):(rect(1)+rect(3)),:);
stage4_cropedc = stage4c(rect(2):(rect(2)+rect(4)),rect(1):(rect(1)+rect(3)),:);
figure, imshow(stage11_croped);
figure, imshow(stage4_croped);
figure, imshow(stage4_cropeda);
figure, imshow(stage4_cropedb);
figure, imshow(stage4_cropedc);
% figure, imhist(stage11_croped(:,:,1))
% figure, imhist(stage4_croped(:,:,1))
% figure, imhist(stage11_croped(:,:,2))
% figure, imhist(stage4_croped(:,:,2))
% figure, imhist(stage11_croped(:,:,3))
% figure, imhist(stage4_croped(:,:,3))
