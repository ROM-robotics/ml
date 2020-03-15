% Region_based Histogram Equalization
clear;
clc;
close;
im = imread('industry.jpg');
img = rgb2gray(im);
%imshow(img);
%figure;
img1 = img(1:328,1:500);
img2 = img(1:328,501:1000);
img3 = img(1:328,1001:1500);
img4 = img(1:328,1501:2000);
img5 = img(329:656,1:500);
img6 = img(329:656,501:1000);
img7 = img(329:656,1001:1500);
img8 = img(329:656,1501:2000);
img9 = img(657:984,1:500);
img10 = img(657:984,501:1000);
img11 = img(657:984,1001:1500);
img12 = img(657:984,1501:2000);
img13 = img(984:1312,1:500);
img14 = img(984:1312,501:1000);
img15 = img(984:1312,1001:1500);
img16 = img(984:1312,1501:2000);
subplot(4,4,1);imshow(img1);
subplot(4,4,2);imshow(img2);
subplot(4,4,3);imshow(img3);
subplot(4,4,4);imshow(img4);
subplot(4,4,5);imshow(img5);
subplot(4,4,6);imshow(img6);
subplot(4,4,7);imshow(img7);
subplot(4,4,8);imshow(img8);
subplot(4,4,9);imshow(img9);
subplot(4,4,10);imshow(img10);
subplot(4,4,11);imshow(img11);
subplot(4,4,12);imshow(img12);
subplot(4,4,13);imshow(img13);
subplot(4,4,14);imshow(img14);
subplot(4,4,15);imshow(img15);
subplot(4,4,16);imshow(img16);
figure;
%---------------------------------------------------%
REgbase(mean(img1(:)),mean(img(:)),img1);subplot(4,4,1)
REgbase(mean(img2(:)),mean(img(:)),img2);subplot(4,4,2  )
REgbase(mean(img3(:)),mean(img(:)),img3);subplot(4,4,3)
REgbase(mean(img4(:)),mean(img(:)),img4);subplot(4,4,4)
REgbase(mean(img5(:)),mean(img(:)),img5);subplot(4,4,5)
REgbase(mean(img6(:)),mean(img(:)),img6);subplot(4,4,6)
REgbase(mean(img7(:)),mean(img(:)),img7);subplot(4,4,7)
REgbase(mean(img8(:)),mean(img(:)),img8);subplot(4,4,8)
REgbase(mean(img9(:)),mean(img(:)),img9);subplot(4,4,9)
REgbase(mean(img10(:)),mean(img(:)),img10);subplot(4,4,10)
REgbase(mean(img11(:)),mean(img(:)),img11);subplot(4,4,11)
REgbase(mean(img12(:)),mean(img(:)),img12);subplot(4,4,12)
REgbase(mean(img13(:)),mean(img(:)),img13);subplot(4,4,13)
REgbase(mean(img14(:)),mean(img(:)),img14);subplot(4,4,14)
REgbase(mean(img15(:)),mean(img(:)),img15);subplot(4,4,15)
REgbase(mean(img16(:)),mean(img(:)),img16);subplot(4,4,16)
%subplot(4,4,1);imshow(IMG);
% subplot(4,4,2);imshow(IMG);
% subplot(4,4,3);imshow(IMG);
% subplot(4,4,4);imshow(IMG);
% subplot(4,4,5);imshow(IMG);
% subplot(4,4,6);imshow(IMG);
% subplot(4,4,7);imshow(IMG);
% subplot(4,4,8);imshow(IMG);
% subplot(4,4,9);imshow(IMG);
% subplot(4,4,10);imshow(IMG);
% subplot(4,4,12);imshow(IMG);
% subplot(4,4,12);imshow(IMG);
% subplot(4,4,13);imshow(IMG);
% subplot(4,4,14);imshow(IMG);
% subplot(4,4,15);imshow(IMG);
% subplot(4,4,16);imshow(IMG);

