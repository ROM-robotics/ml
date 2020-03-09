clear; clc; close;
img = imread('T.jpg');

T = 100;
im_binarization = (img>T);

total_white_pixels = sum(im_binarization(:));
[ROW,COLUMN] = size(img);
total_pixels = ROW * COLUMN;

total_black_pixels = total_pixels - total_white_pixels;