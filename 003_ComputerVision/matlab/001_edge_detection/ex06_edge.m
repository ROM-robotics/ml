%Project4
clear; clc; close;
img = imread('Project4_Defect.jpg');
imc = imcrop (img,[18,18,size(img,2)-35,size(img,1)-35]);
im1 = rgb2gray(imc);
T = mean(im1(:));
im2 = (im1>T);
h = fspecial('average',10);
im4 = imfilter(im2,h);

subplot(1,4,1);imshow(imc);
subplot(1,4,2);imshow(im1);
subplot(1,4,3);imshow(im2);
subplot(1,4,4);imshow(im4);
figure;

im6 = edge(im4,'sobel');
se = strel('line',3,90);
im8 = imdilate(im6,se);
 
subplot(1,4,2);imshow(im6);
subplot(1,4,4);imshow(im8);
figure;
 
 
im9 = imfill(im8,'holes');
imshow(im9);
% figure;
cc2 = bwconncomp(im9);
s = regionprops(cc2,'Area','Centroid');
area = zeros(1,length(s));
centroid = zeros(length(s),2);
for i = 1:length(s)
     area(i) = s(i).Area;
     centroid(i,:) = s(i).Centroid;
end;

[a,lid] = min(area);
area(lid)=[];
centroid(lid,:)=[];

[c,sid] = min(area);
area(sid)=[];
centroid(sid,:)=[];

[d,sid] = min(area);
area(sid)=[];
centroid(sid,:)=[];

[b,sid] = min(area);
imshow(img);hold on;
text(centroid(sid,1),centroid(sid,2),'D');
centroid(sid,:) = [];

text(centroid(:,1),centroid(:,2),'G');

