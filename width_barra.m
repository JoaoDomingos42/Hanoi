function [vec_comprimentos_barras] = width_barra(N_user);
%O comprimento das torres pretas é de 0.1 , logo qualquer peça tem de ter
%um comprimento maior a 0.1 e os valores tem de ser suficientemente
%dispares para ser preceptível
vec_comprimentos_barras=zeros(1,N_user);
for i=1:N_user
vec_comprimentos_barras(1,i)=0.1+0.1*i;
end
end