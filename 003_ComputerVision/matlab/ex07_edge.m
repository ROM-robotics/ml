%Project4
clear; clc; close;
img = imread('crop_coins.jpg');
% imc = imcrop (img,[18,18,size(img,2)-35,size(img,1)-35]);
 gray = rgb2gray(img);
 T = mean(gray(:));
 %T = 100;
 thresh_img = (gray>T);
 h = fspecial('average',10); 
 smooth = imfilter(thresh_img,h); 

 edg_pre = edge(smooth,'prewitt');
 
 se = strel('line',2,90);
 img_close = imclose(edg_pre,se);
 
 img_fill = imfill(img_close,'holes');
 
 cc2 = bwconncomp(img_fill);
 
 s = regionprops(cc2,'Area','Centroid');
 
 subplot(1,4,1);imshow(edg_pre);
 subplot(1,4,2);imshow(img_fill);
 figure;


 areas = zeros(1,length(s));
 centroids = zeros(length(s),2);
 
 for i = 1:length(s)
    area(i) = s(i).Area;
    centroid(i,:) = s(i).Centroid;
end;
[a,lid] = min(area);
area(lid)=[];
centroid(lid,:)=[];
text(centroid(:,1),centroid(:,2),'G');



