clear; clc; close all;
%% this is for projection data
trData = load('fruitDataSet');
X = trData.X;
Y = trData.Y;
%projectTrDataInFSpace(trData); 
Mdl = fitcknn(X,Y,'NumNeighbors',5,'Standardize',1);% X = n
save('knnModel','Mdl');