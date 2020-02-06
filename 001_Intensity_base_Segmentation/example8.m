% find T automatically
clear; clc; close;
img = imread('football.jpg');
gray_t = imread('T.jpg');

gray = rgb2gray(img);

%T = 210;
T = mean(gray(:));
TT= mean(gray_t(:));

img_binarization = (gray>T)
img_binarization_t = (gray_t>TT);

%imshow(img_binarization);
imshow(img_binarization_t);

%object_size = sum(sum(img_binarization_t));
object_size = sum(sum(img_binarization));
