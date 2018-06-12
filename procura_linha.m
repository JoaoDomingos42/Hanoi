function [n_niveis_1,n_niveis_2,n_niveis_3,barra_1,barra_2,barra_3] = procura_linha(tabuleiro,linha,N_user,n_niveis_1,n_niveis_2,n_niveis_3)
aux = find(tabuleiro(linha,:));

%Vectores necess�rios para a representacao do bar plot
um_elemento_nao_nulo =zeros(1,3);
dois_elementos_nao_nulos=zeros(1,3);


%Fun��o respons�vel por determinar a width das pe�as. A width de cada
%pe�a � que representa a pe�a em si: pe�a maior com width maior
[vec_comprimentos_barras] = width_barra(N_user);


 if isequal(isempty(aux),1)==0
 %Vector n�o vazio
 
 %Existem 3 hipoteses na procura: numa linha existem 3 , 2 ou 1 elemento
 %nao nulo(se todos os elementos forem nulos nao existem pe�as logo nada �
 %representado)
 %Caso 1: 1 elemento n�o nulo na linha
 if (size(aux,2)==1)
         %Correr os diferentes valores poss�veis das pe�as para saber qual
         %a width a usar no bar()
         for j=1:N_user
         if(tabuleiro(linha,aux(1,1))==j)
             %Preencher correctamente as pe�as na 2 e terceira coluna
             if(aux(1,1)==1)
         um_elemento_nao_nulo(1,aux(1,1))=n_niveis_1;
         n_niveis_1=n_niveis_1-1;
         barra_1=bar(um_elemento_nao_nulo,vec_comprimentos_barras(1,j),'stacked');
             end
                if(aux(1,1)==2)
         um_elemento_nao_nulo(1,aux(1,1))=n_niveis_2;
         n_niveis_2=n_niveis_2-1;
         barra_1=bar(um_elemento_nao_nulo,vec_comprimentos_barras(1,j),'stacked');
                end
                if(aux(1,1)==3)
         um_elemento_nao_nulo(1,aux(1,1))=n_niveis_3;
         n_niveis_3=n_niveis_3-1;
         barra_1=bar(um_elemento_nao_nulo,vec_comprimentos_barras(1,j),'stacked');
             end
         end
         end
 end
 end
%Caso 2: se existerem 2 elementos n�o nulos
 if(size(aux,2)==2)
     %Ciclo exterior serve para representar as 2 pe�as n�o nulas:
     %como no bar plot, para resultar , cada vector s� pode ter 1 elemento
     %n�o nulo como neste caso temos 2 elementos precisamos de correr ambos
     %os elementos
     for l=1:2    
     for k=1:N_user
         if(tabuleiro(linha,aux(1,l))==k)
             if(aux(1,l)==1)
                 dois_elementos_nao_nulos=zeros(1,3);
         dois_elementos_nao_nulos(1,aux(1,l))=n_niveis_1;
         n_niveis_1 = n_niveis_1-1;
         barra_2=bar(dois_elementos_nao_nulos,vec_comprimentos_barras(1,k),'stacked');
             end;
               if(aux(1,l)==2)
                   dois_elementos_nao_nulos=zeros(1,3);
         dois_elementos_nao_nulos(1,aux(1,l))=n_niveis_2;
         n_niveis_2 = n_niveis_2-1;
         barra_2=bar(dois_elementos_nao_nulos,vec_comprimentos_barras(1,k),'stacked');
             end;
               if(aux(1,l)==3)
                   dois_elementos_nao_nulos=zeros(1,3);
         dois_elementos_nao_nulos(1,aux(1,l))=n_niveis_3;
         n_niveis_3 = n_niveis_3-1;
         barra_2=bar(dois_elementos_nao_nulos,vec_comprimentos_barras(1,k),'stacked');
             end;
         end
     end
     end
 end
         
%Caso 3: se existirem 3 elementos n�o nulos
 if(size(aux,2)==3)
     %Ciclo exterior serve para representar as 3 pe�as n�o nulas:
     %como no bar plot, para resultar , cada vector s� pode ter 1 elemento
     %n�o nulo como neste caso temos 3 elementos precisamos de correr ambos
     %os elementos
     for q=1:3    
     for w=1:N_user
         if(tabuleiro(linha,aux(1,q))==w)
             if(aux(1,q)==1)
                tres_elementos_nao_nulos=zeros(1,3);
         tres_elementos_nao_nulos(1,aux(1,q))=n_niveis_1;
         n_niveis_1 = n_niveis_1-1;
         barra_3=bar(tres_elementos_nao_nulos,vec_comprimentos_barras(1,w),'stacked');
             end;
               if(aux(1,q)==2)
                   tres_elementos_nao_nulos=zeros(1,3);
         tres_elementos_nao_nulos(1,aux(1,q))=n_niveis_2;
         n_niveis_2 = n_niveis_2-1;
         barra_3=bar(tres_elementos_nao_nulos,vec_comprimentos_barras(1,w),'stacked');
             end;
               if(aux(1,q)==3)
                  tres_elementos_nao_nulos=zeros(1,3);
         tres_elementos_nao_nulos(1,aux(1,q))=n_niveis_3;
         n_niveis_3 = n_niveis_3-1;
         barra_3=bar(tres_elementos_nao_nulos,vec_comprimentos_barras(1,w),'stacked');
             end;
         end
     end
     end
 


 end
 

end