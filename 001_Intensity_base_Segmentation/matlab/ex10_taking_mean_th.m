%logo design exercise
clc;clear;close;

%img = imread('logo_design.jpg');
img = imread('apple.jpg');

gray = rgb2gray(img); 

T = mean(gray(:));

binarization = (gray>T);
imshow(binarization);
roi_size = sum(sum(binarization));

% if distance between mean & median is closer, mean threshold is OK
% else if distance between mean & median is longer, mean threshold isn't OK