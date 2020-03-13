% indirect
clear; clc; close;
img = imread('football.jpg');
gray = rgb2gray(img);

T = 210;
img_binarization = (gray<T);

white_size = sum(sum(img_binarization));
[width,height,channel] = size(img_binarization);
all_size = width*height;
object_size = all_size - white_size;
