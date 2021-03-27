function [im1]=signed_dir(magx,magy)
% on prend en entrée le gradient suivant x et le gradient suivant y 
% et on donne en sortie l'orientation signée

im0=atan2(magy,magx); %on calcule l'arctangente 4 quadrants
im0=im0*180/pi; %on convertit entre [-180,180];
im1=im0; %on fait une copie
[n,m]=size(im0); %taille de l'image
for i=1:n % pour chaque ...
    for j=1:m % ... pixel
        if im0(i,j)<0 % si valeur négative stricte
            im1(i,j)=im0(i,j)+360; % on ajoute 360
        end
    end
end
end

