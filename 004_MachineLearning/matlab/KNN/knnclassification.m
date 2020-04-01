
function label = knnclassification(img)
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);
fv = [mean(r(:)),mean(g(:)),mean(b(:))];
load('knnPSAModel');
label = predict(Mdl,fv);
figure;imshow(img);hold on;
x = size(img,2)/2;
y = size(img,1)/2;
text(x,y,label);
