function [im1]=get_subimage(im0,x1,x2,y1,y2)
[n,~]=size(im0);
new_x1=n-y2;
new_x2=n-y1;
new_y1=x1+1;
new_y2=x2+1;
im1=im0(new_x1:new_x2,new_y1:new_y2);
end

