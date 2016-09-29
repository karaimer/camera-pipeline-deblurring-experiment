close all
clear all

% this loads blurred stage 4 image. 
% then converts it to the txt file version.
% this way my pipeline can read it, and run through the pipeline. 

stage4_image = im2double(imread('.\NIKOND40_0037_stage4_defiltered.tif')); %image; %

% save image as binary file 
fd = fopen('.\images\NIKOND40_0037_stage4_defiltered\r.txt','w');
    fwrite(fd,stage4_image(:,:,1)','double');
    fclose(fd);
    
fd2 = fopen('.\images\NIKOND40_0037_stage4_defiltered\g.txt','w');
    fwrite(fd2,stage4_image(:,:,2)','double');
    fclose(fd2);
fd3 = fopen('.\images\NIKOND40_0037_stage4_defiltered\b.txt','w');
    fwrite(fd3,stage4_image(:,:,3)','double');
    fclose(fd3);
