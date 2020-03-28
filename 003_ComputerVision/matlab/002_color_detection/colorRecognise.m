function colorRecognise(img)
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);
mur = mean(r(:));
mug = mean(g(:));
mub = mean(b(:));
x = size(img,2)/2;
y = size(img,1)/2;
figure; imshow(img); hold on;
if(mur > mug && mur > mub && mub > mug)
    text(x,y,'red');
elseif(mug > mur && mug > mub)
    text(x,y,'green');
elseif(mub > mur && mub > mug)
    text(x,y,'blue');
elseif(mug > mub && mur > mub)
     text(x,y,'yellow');
end;

% see https://www.rapidtables.com/web/color/RGB_Color.html