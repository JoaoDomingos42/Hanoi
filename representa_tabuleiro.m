function [barra_1,barra_2,barra_3]= representa_tabuleiro(tabuleiro,N_user)

n_niveis_1=0;
n_niveis_2=0;
n_niveis_3=0;

barra_1=[];
barra_2=[];
barra_3=[];

%Criação vectores para vermos o n peças por coluna
aux_1 = find(tabuleiro(:,1));

aux_2 = find(tabuleiro(:,2));

aux_3 = find(tabuleiro(:,3));


%N niveis é usado para o bar plot
if isequal(isempty(aux_1),1) ==0
    n_niveis_1 = size(aux_1,1);
end

if isequal(isempty(aux_2),1) ==0
    n_niveis_2 = size(aux_2,1);
end

if isequal(isempty(aux_3),1) ==0
    n_niveis_3 = size(aux_3,1);
end

%Função de procura por linha e que representa as respectivas peças numa
%linha.Esta função agora tem de ser corrida o número de vezes
%correspondentemente ao N_user: no final e no incio as peças estão todas na
%vertical formado uma torre , logo para N_user peças temos N_user linhas
% if N_user > 2
for i=1:N_user

[n_niveis_1,n_niveis_2,n_niveis_3] = procura_linha(tabuleiro,i,N_user,n_niveis_1,n_niveis_2,n_niveis_3);

end
% else
%     for i=1:3
% 
%     [n_niveis_1,n_niveis_2,n_niveis_3,barra_1,barra_2,barra_3] = procura_linha(tabuleiro,i,N_user,n_niveis_1,n_niveis_2,n_niveis_3);
% 
%     end
% end
end


 
        
         
     
    
 
         
  
    
         
     
         
       
         
      
      
      
 