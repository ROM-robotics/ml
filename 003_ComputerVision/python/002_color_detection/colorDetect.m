function C = colorDetect(img)
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);

mur = mean(r(:));
mug = mean(g(:));
mub = mean(b(:));

a = [mur mug mub];
b = mean(a);

if(mur > 2*mug && mur > 2*mub) 
    C = 1; % red
elseif(mug > 2*mur && mug > 2*mub) 
    C = 2;  % green
elseif(mub > 2*mur && mub > 2*mug) 
    C = 3;  % blue
elseif(mur > mug && mub > mug)
    C = 4;   % purple
elseif(mug > mur && mug > mub)
     C = 5;  % dark blue
elseif(mub > mur && mub > mug)
     C = 6;  % silver
elseif(b >= 0 && b <= 20) 
    C = 7;   % black
else
     C = 0;
end;
