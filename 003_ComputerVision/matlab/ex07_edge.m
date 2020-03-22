%Project4
clear; clc; close;
img = imread('crop_coins.jpg');
% imc = imcrop (img,[18,18,size(img,2)-35,size(img,1)-35]);
 gray = rgb2gray(img);
 T = mean(gray(:));
 thresh_img = (gray>T);
%  h = fspecial('average',10); 
%  smooth = imfilter(thresh_img,h);
 smooth = thresh_img;
 
 edg_sob = edge(smooth,'sobel');
 edg_lap = edge(smooth,'log');
 edg_pre = edge(smooth,'prewitt');
 edg_can = edge(smooth,'canny');
 
 se = strel('disk',1);
 img_dilate = imclose(edg_can,se);
 
 img_fill = imfill(img_dilate,'holes');
 
 cc2 = bwconncomp(img_fill);
 
 s = regionprops(cc2,'Area','Centroid');
 
 areas = zeros(1,length(s));
 centroids = zeros(length(s),2);
 
 for i = 1:length(s)
     areas(i) = s(i).Area;
     centroids(i,:) = s(i).Centroid;
 end;
 
 
 %subplot(1,4,1);imshow(gray);
 %subplot(1,4,2);imshow(thresh_img);
 %subplot(1,4,3);imshow(edg_can);
 subplot(1,4,1);imshow(img_dilate);
 subplot(1,4,2);imshow(img_fill);
%  subplot(1,4,4);imshow(edg_pre);
 figure;
imshow(img);hold on;
text(centroids(:,1),centroids(:,2),'c');

% [a,lid] = min(area);
% area(lid)=[];
% centroid(lid,:)=[];
% 
% [c,sid] = min(area);
% area(sid)=[];
% centroid(sid,:)=[];
% 
% [d,sid] = min(area);
% area(sid)=[];
% centroid(sid,:)=[];
% 
% [b,sid] = min(area);
% imshow(img);hold on;
% text(centroid(sid,1),centroid(sid,2),'D');
% centroid(sid,:) = [];
% 
% text(centroid(:,1),centroid(:,2),'c');
% 
