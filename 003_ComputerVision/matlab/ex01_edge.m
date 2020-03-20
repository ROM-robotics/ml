clear;close all;clc;
img = imread('coins.png');
[BW,thresh]= edge(img,'canny');

imshow(BW);