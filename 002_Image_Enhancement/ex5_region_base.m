%
clear;clc;close all;
im = imread('industry.jpg');
img = rgb2gray(im);
%imtool(img);
y1 = 418; y2 = 706;
x1 = 913; x2 = 1331;
im1 = img(y1:y2,x1:x2);



subplot(2,2,1);imshow(img);title('Original');
subplot(2,2,2);imshow(im1);title('200x300');

figure();

REGbase(mean(im1(:)), mean(img(:)),img);

