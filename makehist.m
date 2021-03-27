function [y]=makehist(mag,dir,bins)
% on donne en entrée la magnitude et l'orientation du gradient de l'image
% pour une cellule
% d'origine et en sortie, on donne le vecteur histogramme (de taille bins)

% Rq : cette fonction est utilisée par la fonction 'make_hog'

pas=floor(360/bins); % pas pour les bins
y=[]; % vecteur vide pour l'histogramme

for i=0:pas:(360-pas) % intervalle pour les bins
    counts=(dir>=i & dir<(i+pas)); % matrice logique 1 si condition vérifiée, 0 sinon
    weighted_counts=mag.*counts; % on pondère avec les valeurs des magnitudes
    total=sum(weighted_counts,'all'); %on somme pour avoir le total
    y=[y total];
end
end

    


