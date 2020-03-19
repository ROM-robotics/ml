% hist equalization
clear;clc;close;
img = imread('industrial.jpg');

img = rgb2gray(img);
img2 = histeq(img);

imshow(img2);