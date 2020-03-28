clear;clc;close all;
img = imread('test.bmp');
%img = imread('paint.png');
imshow(img);
gray_img= rgb2gray(img);

T = mean((mean(gray_img)));
thre_img = ( gray_img>T );

%preprocessing

%extract edge feature
edge_img = edge(thre_img,'Sobel');

%postprocessings
se  = strel('line',3,90);
dilate_img = imdilate(edge_img,se);

filled_img = imfill(dilate_img,'holes');
cc2 = bwconncomp(filled_img);
regionprop = regionprops(cc2,'Area','BoundingBox','Centroid','MajorAxisLength','MinorAxisLength','Perimeter');

%imshow(filled_img);

for i = 1:length(regionprop)
    
    areas = regionprop(i).Area;
    bboxes= regionprop(i).BoundingBox;
    centroids = regionprop(i).Centroid;
    MajAxes = regionprop(i).MajorAxisLength;
    MinAxes = regionprop(i).MinorAxisLength;
    
    bboxesA = bboxes(3)*bboxes(4);
    
    obj_bbox_ratio = areas/bboxesA;
    axes_ratio = MajAxes/MinAxes;
    crop_img = imcrop(img,bboxes);
    
    C = colorDetect(crop_img);
    
    if(obj_bbox_ratio > 0.73 && obj_bbox_ratio < 0.82)
        if(MajAxes > 1.5*MinAxes)
            text(centroids(1),centroids(2),'Elipse');
        else
            text(centroids(1),centroids(2),'Circle');
        end;
    elseif (obj_bbox_ratio > 0.95 && obj_bbox_ratio < 1.05 )
        if( axes_ratio > 0.95 && axes_ratio < 1.05 )
            text(centroids(1),centroids(2),'Square');
        else
             text(centroids(1),centroids(2),'Rectangle');
        end;
    else
        text(centroids(1),centroids(2),'Unknown');
    end;
    
    % for color
    if(C == 1)
          text(centroids(1)+5,centroids(2)+10,'red');
     elseif(C == 2)
          text(centroids(1)+5,centroids(2)+10,'green');
     elseif(C == 3)
          text(centroids(1)+5,centroids(2)+10,'blue');
      elseif(C == 4)
           text(centroids(1)+5,centroids(2)+10,'purple');
     elseif(C == 5)
          text(centroids(1)+5,centroids(2)+10,'light green');
     elseif(C == 6)
          text(centroids(1)+5,centroids(2)+10,'dark blue');
     elseif(C == 7)
          text(centroids(1)+5,centroids(2)+10,'silver');
     elseif(C == 0)
          text(centroids(1)+5,centroids(2)+10,'black');
     end;
    
end;
    













