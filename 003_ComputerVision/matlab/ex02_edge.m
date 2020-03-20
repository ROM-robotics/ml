clear;clc; close all;
img = imread('coins.png');

img_e = edge(img,'sobel');

se = strel('line',5,90);

dil = imdilate(img_e,se);

fill = imfill(dil,'holes');

cc2 = bwconncomp(fill);
total = cc2.NumObjects
subplot(2,2,1);imshow(img);
subplot(2,2,1);imshow(img_e);
figure;
subplot(2,2,1);imshow(fill);
