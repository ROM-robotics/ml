%logo design exercise
clc;clear;close;

img = imread('logo_design.jpg');
gray = rgb2gray(img);

%imhist(gray); 
T = 50;

binarization = (gray>50);
%imshow(binarization);
roi_size = sum(sum(binarization));