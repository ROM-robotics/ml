clear;clc;close all;
load('facedata.mat');
M = uint8(M);
[mV,EV,sV] = computePCA(M);
Mdl = fitcknn(sV,Y,'NumNeighbors', 1, 'Standardize', 1, 'Distance', 'mahalanobis');
save('TrainedEigData','Mdl','EV','mV');