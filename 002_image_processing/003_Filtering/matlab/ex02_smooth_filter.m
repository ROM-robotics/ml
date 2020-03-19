clear;close all;clc;
img = imread('coins.png');
noise_img = imnoise(img,'salt & pepper',0.02);
subplot(1,3,1); imshow(noise_img); title('Noisy');

H = fspecial('average',3);
img2 = imfilter(noise_img,H);
subplot(1,3,2); imshow(img2); title('average filter');

H = 1/9 * [1 2 1;2 4 2;1 2 1;]
img3 = imfilter(noise_img,H);
subplot(1,3,3); imshow(img3); title('Weighted average filter');