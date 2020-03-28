clear;close all;clc;
img = imread('Project4_Defect.jpg');
imc = imcrop (img,[16,18,size(img,2)-35,size(img,1)-35]);
gray = rgb2gray(imc);

thresh = mean(img(:));

thresh_img = (gray>thresh);

filter1= fspecial('average',10);

filtered = imfilter(thresh_img,filter1);

sobeled = edge(filtered,'prewitt');

se = strel('line',3,90);
dilated = imdilate(sobeled,se);

filled = imfill(dilated,'holes');

cc2 = bwconncomp(filled);

total = cc2.NumObjects;

regionprop = regionprops(cc2,'Area','Centroid');

area = zeros(1,length(regionprop));
centroid = zeros(length(regionprop),2);

for i = 1:length(regionprop)
    area(i) = regionprop(i).Area
    centroid(i,:) = regionprop(i).Centroid
end;

[d,sid] = min(area);
area(sid)=[];
centroid(sid,:)=[];

[b,sid] = min(area);
imshow(img);hold on;



