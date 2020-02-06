
clear; clc; close;
img = imread('football.jpg');
%imshow(img)

gray = rgb2gray(img);
%imshow(gray);

%imhist(gray);

T = 210;
img_binarization = (gray>T)
imshow(img_binarization);
%imshow(gray>210);

object_size = sum(sum(img_binarization));
[width,height] = size(img_binarization);
all_size = width*height;
%object_size = sum(img_binarization(:));

