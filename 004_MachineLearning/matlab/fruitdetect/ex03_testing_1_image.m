clear;clc;close all;
img = imread('app.jpg');
gray = rgb2gray(img);
T = mean(gray(:));
bin_image = (gray>T);

edge_image = edge(bin_image,'sobel');
se = strel('line',3,90);
dil_image = imdilate(edge_image,se);
fill_img = imfill(dil_image,'holes');

cc2 = bwconncomp(fill_img);
s = regionprops(cc2,'BoundingBox');
bbox = s.BoundingBox;
crop_img = imcrop(img,bbox);

r = crop_img(:,:,1);
g = crop_img(:,:,2);
b = crop_img(:,:,3);

fv = [mean(r(:)),mean(g(:)),mean(b(:))];
load('knnPSAModel');
label = predict(Mdl,fv);

