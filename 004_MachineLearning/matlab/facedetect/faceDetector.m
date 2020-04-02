function im2 = faceDetector(img)
faceDetector = vision.CascadeObjectDetector; %Viola-Jones methods
bbox = step(faceDetector,img);
img = imcrop(img,bbox);
im2 = imresize(img, [250 250]);
%figure;imshow(im2);
   