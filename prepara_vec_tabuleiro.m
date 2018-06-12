function [aux_1 aux_2 aux_3]= representa_tabuleiro(tabuleiro,linha)

aux_1 = find(tabuleiro(linha,:));
aux_1 = aux_1(2:4);

%Ver se há mais que um elemento diferente de 0 e se houver "partir" o
%vector nas suas componentes
    [aux_1,aux_2,aux_3,n_linhas_interesse]= aux_partir_linhas(vector)
