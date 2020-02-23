% hist local equalization
clear;close;clc;
img = imread('rice.png');
im1 = histeq(img);
im2 = histeq(img,16);
im3 = histeq(img,64);

subplot(2,2,1); imshow(img); title('original');
subplot(2,2,2); imshow(im1); title('Global eq');
subplot(2,2,3); imshow(im2); title('Local 16');
subplot(2,2,4); imshow(im3); title('Local 64');