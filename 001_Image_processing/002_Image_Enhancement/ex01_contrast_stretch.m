% Contrast Stretching
clear;clc;close;
img = imread('industry.jpg');
%imshow(img);

gray = rgb2gray(img); %imshow(gray);
%imhist(gray);

lowheight = stretchlim(gray);
stretch_lowheight = imadjust(gray,lowheight,[]);
imhist(stretch_lowheight);
