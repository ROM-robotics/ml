function [label,bbox] = faceRecognize(img)
faceDetector = vision.CascadeObjectDetector; % Viola-Jones methods
bbox = step(faceDetector,img);
img_crop = imcrop(img,bbox);
img_resize = imresize(img_crop,[250 250]);
imV = img_resize(:);
load('TrainedEigData.mat');
imv = mV - imV;
a = single(imv');
fv = a * EV;
label = predict(Mdl,fv);

