clear;close all;clc;
img = imread('coins.png');
gray = img;

H = fspecial('prewitt');
prewit = imfilter(gray,H);

H = fspecial('sobel')
sobel = imfilter(gray,H);

H = fspecial('laplacian');
lap = imfilter(gray,H);

subplot(2,2,1); imshow(img); title('Original');
subplot(2,2,2); imshow(prewit); title('Shaprened-prewitt');
subplot(2,2,3); imshow(sobel); title('Shaprened-sobel');
subplot(2,2,4); imshow(lap); title('Sharpened-laplacian');
