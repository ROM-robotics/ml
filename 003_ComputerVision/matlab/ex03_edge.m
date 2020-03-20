clear;close all;clc;
img = imread('coins.png');

[bw,thresh] = edge(img,'prewitt');

se = strel('disk',1);

post_process = imclose(bw,se);

filled = imfill(post_process, 'holes');

cc2 = bwconncomp(filled);
total_object = cc2.NumObjects

s = regionprops(cc2,'Area','Centroid');

area = zeros(1,length(s));
centroid = zeros(length(s),2);

for i = 1:length(s)
    area(i) = s(i).Area
    centroid(i,:) = s(i).Centroid;
end;