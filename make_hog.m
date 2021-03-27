function [vect]=make_hog(im,cell_width,cell_height,bins)
% on donne en entrée une image, et la largeur et hauteur de cellule
% et en sortie, on calcule le vecteur des histogrammes
vect=[]; %vecteur de sortie
im=im2double(im); % conversion en double
magy=grad_y(im); % gradient suivant x
magx=grad_x(im); % gradient suivant y
mag=sqrt(magx.^2+magy.^2); % magnitude du gradient
dir=signed_dir(magx,magy); % orientation signée du gradient
[n,m]=size(mag); %taille de l'image
n_cells_y=floor(m/cell_width); % nombre de cellules suivant y
n_cells_x=floor(n/cell_height); % nombre de cellules suivant x
for i=1:(cell_height):(n_cells_x*cell_height) %pour chaque cellule suivant x
    for j=1:(cell_width):(n_cells_y*cell_width) %pour chaque cellule suivant y
        cell_mag=mag(i:(i+cell_height-1),j:(j+cell_width-1)); %on calcule la magnitude par restriction à la zone
        cell_dir=dir(i:(i+cell_height-1),j:(j+cell_width-1)); %on calcule l'orientation par restriction à la zone
        histo=makehist(cell_mag,cell_dir,bins); %on calcule le vecteur histogramme
        vect=[vect;histo];
    end
end
vect=vect(:); % on transforme en vecteur colonne 
end

        
