clear;close all; clc;
trData = load('fruitDataSet');
X = trData.X;
Y = trData.Y;

Mdl = fitcknn(X,Y,'NumNeighbors',5,'Standardize',1);
save('knnPSAModel','Mdl');