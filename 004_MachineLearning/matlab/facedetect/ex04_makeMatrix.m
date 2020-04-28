clear;clc;close all;

pyaesoan = load('pyaesoanaung.mat');
M1 = pyaesoan.im_zeros; 
columns = size(M1,2);
sName = 'Pyae Soan Aung';
Y1 = repmat(cellstr(sName), columns,1);

kaung = load('kaunghtethtun.mat');
M2 = kaung.im_zeros;
columns = size(M2,2);
sName = 'Kaung Htet Htun';
Y2 = repmat(cellstr(sName), columns,1);

M = [M1 M2];
Y = [Y1;Y2];

save('facedata.mat','M','Y');