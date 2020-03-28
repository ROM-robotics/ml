function colorDetection(img)
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);
mur = mean(r(:));
mug = mean(g(:));
mub = mean(b(:));
x = size(img,2)/2;
y = size(img,1)/2;
figure; imshow(img); hold on;
if(mur>mug && mur>mub && mub>mug)
    text(x,y,'red');
else
    text(x,y,'unknow');
end;
%end detect