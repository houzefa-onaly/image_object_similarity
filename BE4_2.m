clear all;
close all;
clc

I=imread('hog_different.bmp');
cell_width=16;
cell_height=16;
bins=9;
I1=get_subimage(I,0,63,0,127);
I2=get_subimage(I,90,153,0,127);
v1=make_hog(I1,cell_width,cell_height,bins);
v2=make_hog(I2,cell_width,cell_height,bins);
similarity=sum(v1.*v2)/(norm(v1)*norm(v2));


