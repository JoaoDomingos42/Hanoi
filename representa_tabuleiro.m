function [barra_1,barra_2,barra_3]= representa_tabuleiro(tabuleiro,N_user)

n_niveis_1=0;
n_niveis_2=0;
n_niveis_3=0;

barra_1=[];
barra_2=[];
barra_3=[];

%Cria��o vectores para vermos o n pe�as por coluna
aux_1 = find(tabuleiro(:,1));

aux_2 = find(tabuleiro(:,2));

aux_3 = find(tabuleiro(:,3));


%N niveis � usado para o bar plot
if isequal(isempty(aux_1),1) ==0
    n_niveis_1 = size(aux_1,1);
end

if isequal(isempty(aux_2),1) ==0
    n_niveis_2 = size(aux_2,1);
end

if isequal(isempty(aux_3),1) ==0
    n_niveis_3 = size(aux_3,1);
end

%Fun��o de procura por linha e que representa as respectivas pe�as numa
%linha.Esta fun��o agora tem de ser corrida o n�mero de vezes
%correspondentemente ao N_user: no final e no incio as pe�as est�o todas na
%vertical formado uma torre , logo para N_user pe�as temos N_user linhas
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


 
        
         
     
    
 
         
  
    
         
     
         
       
         
      
      
      
 