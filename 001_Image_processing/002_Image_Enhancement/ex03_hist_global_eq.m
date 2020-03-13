% ex03_hist_equalize
clear;close;clc;
img = imread('rice.png');
imeq = histeq(img);
imshow(img);figure();imshow(imeq);
