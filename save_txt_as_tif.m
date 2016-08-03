close all
clear all

r = importdata('.\images\NIKOND40_0037_stage4\r.txt');
g = importdata('.\images\NIKOND40_0037_stage4\g.txt');
b = importdata('.\images\NIKOND40_0037_stage4\b.txt');

[m,n] = size(r); 
image = zeros(m,n,3);
image(:,:,1) = r;
image(:,:,2) = g;
image(:,:,3) = b;
% image = im2double(image)/65536;
figure, imshow(image)

filename = 'NIKOND40_0037_stage4.tif';
outputFileName = filename;
t = Tiff(outputFileName,'w');
% 8 bit save works well
avgImg_double = uint16(image*65535);
output_unit16 = avgImg_double;

tagstruct.ImageLength = size(output_unit16,1);
tagstruct.ImageWidth = size(output_unit16,2);
tagstruct.BitsPerSample = 16;
tagstruct.SamplesPerPixel = 3;
tagstruct.Photometric = Tiff.Photometric.RGB;
% tagstruct.RowsPerStrip = 16;
tagstruct.PlanarConfiguration = Tiff.PlanarConfiguration.Chunky;
tagstruct.Software = 'MATLAB';
% tagstruct.DNGVersion = [1; 4; 0; 0];
t.setTag(tagstruct);
t.write(output_unit16);
t.close();
