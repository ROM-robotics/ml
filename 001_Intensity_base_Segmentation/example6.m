
clear; clc; close;
img = imread('football.jpg');
%imshow(img)

gray = rgb2gray(img);
%imshow(gray);

%imhist(gray);

T = 210;
img_binarization = (gray<T)
imshow(img_binarization);
%imshow(gray>210);

white_size = sum(sum(img_binarization));
[width,height,channel] = size(img_binarization);
all_size = width*height;
object_size = all_size - white_size;
