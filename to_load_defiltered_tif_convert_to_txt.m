close all
clear all

% this loads blurred stage 4 image. 
% then converts it to the txt file version.
% this way my pipeline can read it, and run through the pipeline. 

stage4_image = im2double(imread('.\NIKOND40_0037_stage4_defiltered.tif')); %image; %

dlmwrite('.\images\NIKOND40_0037_stage4_defiltered\r.txt',stage4_image(:,:,1),'delimiter',' ', 'precision','%.6f');
dlmwrite('.\images\NIKOND40_0037_stage4_defiltered\g.txt',stage4_image(:,:,2),'delimiter',' ', 'precision','%.6f');
dlmwrite('.\images\NIKOND40_0037_stage4_defiltered\b.txt',stage4_image(:,:,3),'delimiter',' ', 'precision','%.6f');
