%fuction for region_based local hitogram

function IMG = REgbase(b,B,img)
if b <= B
    IMG = histeq(img);
else
    IMG = img;
end
imshow(IMG);
figure;