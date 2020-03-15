% direct
clear; clc; close;
img = imread('football.jpg');
gray = rgb2gray(img);

%imshow(gray);
%imhist(gray);

T = 210;
img_binarization = (gray>T);
%imshow(img_binarization);

object_size = sum(sum(img_binarization));
