%% football threshold
clear; clc; close;
im = imread('football.jpg');
im1 = rgb2gray(im);
% imtool(im1);            %to see value of T
% imhist(im1);            %to see value of T
im2 = (im1>224);
imshow(im2);
a = sum(im2);
b = sum(a);
%black = (256*320)-b;