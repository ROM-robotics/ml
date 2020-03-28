function HSVRecognise(img)
img1 = rgb2hsv(img);
h = img1(:,:,1);
s = img1(:,:,2);
v = img1(:,:,3);
muh = mean(h(:));
mus = mean(s(:));
muv = mean(v(:));
x = size(img,2)/2;
y = size(img,1)/2;

muh = muh * 360;
muv = muv * 100;

figure; imshow(img); hold on;
if(muh <= 50)
    text(x,y,'red');
elseif(muh <= 110)
    text(x,y,'yellow');
elseif(muh < 150)
    text(x,y,'green');
elseif(muh <= 200)
    text(x,y,'blue');    
end;
