% hist equalization step(1,2);

% hist equalize with matlab
close all;clear;clc;
mat = [1 0 0;2 0 0;3 1 2;];
mat2 = uint8(mat);
im2 = histeq(mat2);

% hist equalize with manual
imhist(mat);
p0 = 4/9; p1 = 2/9; p2 = 2/9; p3 = 1/9;
s0 = p0;
s1 = p0 + p1;
s2 = p0 + p1 + p2;
s3 = p0 + p1 + p2 + p3;
h0 = s0 * 255; h1 = s1*255; h2 = s2*255; h3 = s3*255;
mat3 = uint8([h1 h0 h0;h2 h0 h0;h3 h1 h2;]);