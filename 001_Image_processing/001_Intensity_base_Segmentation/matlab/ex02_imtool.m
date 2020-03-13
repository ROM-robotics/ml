% imtool()
clear; close; clc;

img = imread('apple.jpg');
img2 = rgb2gray(img);

imtool(img);
%figure();
imtool(img2);

% Find T value


