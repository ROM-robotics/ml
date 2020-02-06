clear; clc; close;
img = imread('T.jpg');
%imshow(img);
%imhist(img);

T = 100;
im_binarization = (img<T);
%imshow(im_binarization);

first_sum = sum(im_binarization);
second_sum= sum(first_sum);
sec_sum = sum(sum(im_binarization));

second_step = sum(im_binarization(:))
imhist(img);
%T = mean(img(:));
%im = (img>T);
%imshow(im);
%[A, B] = size(im);
%totalPixels = A*B;
%totalWPixels = sum(im(:));
%totalBPixels = totalPixels - totalWPixels;
