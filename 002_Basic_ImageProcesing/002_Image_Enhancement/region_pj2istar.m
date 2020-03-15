%region_base for pj2_istar
clc; close; clear;
%----------image read,gray,crop--------%
im = imread('hledan.jpg');
img = rgb2gray(im);
img1 = img(1:1728,1:2592);
img2 = img(1:1728,2593:5184);
img3 = img(1729:3456,1:2592);
img4 = img(1729:3456,2593:5184);

subplot(2,2,1);imshow(img1);
subplot(2,2,2);imshow(img2);
subplot(2,2,3);imshow(img3);
subplot(2,2,4);imshow(img4);
figure;
%-----------region_base by mean------------%
REgbase(mean(img1(:)),mean(img(:)),img1);
REgbase(mean(img2(:)),mean(img(:)),img2);
REgbase(mean(img3(:)),mean(img(:)),img3);
REgbase(mean(img4(:)),mean(img(:)),img4);

