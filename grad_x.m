function [im3]=grad_x(im0);
[n,m]=size(im0); % taille de l'image
im1=im0; % copie de l'image
% on fait un padding avec des zéros :

M2=zeros(1,m+2);
M3=zeros(n,1);
im1=cat(2,M3,im1);
im1=cat(2,im1,M3);
im1=cat(1,im1,M2);
im1=cat(1,M2,im1);
im2=zeros(n+2,m+2);

filter_x=[-1 0 1];  % on crée le filtre
for i=2:(n+1) % pour chaque ...
    for j=2:(m+1) % ... pixel
        im2(i,j)=sum(im1(i,(j-1):(j+1)).*filter_x); % on calcule le gradient avec le filtre
    end
    
im3=im2(2:(n+1),2:(m+1)); % on recadre l'image en enlevant le padding
end
end