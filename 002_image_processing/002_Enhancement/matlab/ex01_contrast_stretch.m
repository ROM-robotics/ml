% Contrast Stretching
clear;clc;close;
img = imread('industrial.jpg');

gray = rgb2gray(img);
%imhist(gray);

low_height = stretchlim(gray);
stretch_lh = imadjust(gray,low_height,[]);
%imhist(stretch_lh);
imshow(stretch_lh);