%logo design exercise
clc;clear;close;

%img = imread('logo_design.jpg');
img = imread('apple.jpg');

gray = rgb2gray(img);
%imhist(gray); 

T1 = 50;
T2 = 35;

binarization = (gray>T2);
imshow(binarization);
roi_size = sum(sum(binarization));
%imshow(img);