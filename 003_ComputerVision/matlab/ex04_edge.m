clear;close all;clc;
img = imread('Project4_Defect.jpg');
imc = imcrop (img,[16,18,size(img,2)-35,size(img,1)-35]);
gray = rgb2gray(imc);

thresh = mean(img(:));

thresh_img = (gray>thresh);

filter1= fspecial('average',10);

filtered = imfilter(thresh_img,filter1);

sobeled = edge(filtered,'sobel');

se = strel('line',3,90);
dilated = imdilate(sobeled,se);

filled = imfill(dilated,'holes');

cc2 = bwconncomp(filled);

total = cc2.NumObjects

regionprop = regionprops(cc2,'Area','Centroid');

areas = zeros(1,length(regionprop));
centroids = zeros(length(regionprop),2);

for i = 1:length(regionprop)
    areas(i) = regionprop(i).Area
    centroids(i,:) = regionprop(i).Centroid
end;

%imhist(thresh_img);
subplot(2,4,1);imshow(thresh_img);title('thresh_img');
subplot(2,4,2);imshow(filtered);title('filtered');
subplot(2,4,3);imshow(sobeled);title('sobeled');
subplot(2,4,4);imshow(dilated);title('dilated');
subplot(2,4,5);imshow(filled);title('filled');
figure;