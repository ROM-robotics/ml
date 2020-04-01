function imgROI = extROI(img)
gray = rgb2gray(img);
binary_image = gray>mean(gray(:));

edge_image = edge(binary_image,'sobel');

se = strel('disk',1);
dilate = imdilate(edge_image,se);

[row,col] = find(dilate);

x = min(col); y = min(row);
w = max(col)-x; 
h = max(row)-y;

imgROI = imcrop(img,[x y w h]);
imgROI = imresize(imgROI, [100,100]);








