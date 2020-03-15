% ex03_hist_equalize
clear;close;clc;
img = imread('rice.png');
imeq = histeq(img);
window_size = 3;
ims = histeq(img,window_size);
imshow(img);
figure();
imshow(ims);
