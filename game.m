function [inicio,fim,comparacao]= game(N,tabuleiro,torre_final,N_user)
fim = 0;
comparacao = zeros(2,2);
indice = find(tabuleiro ==N);
%Ver posição dos indices e conforme estejamos na primeira, segunda , ou
%terceira coluna o vector de comparações contém informação relativa às
%outras 2 torres. 1 indica que é possivel mover a peça para essa posição 0
%indica que não. Vector comparações com 2 linhas e 2 colunas. 1 linha
%indica as 2 torres que são analisadas. Segunda linha indica se a repectiva
%torre é possível ou não a movimentação.
    if (indice >=1 & indice<=N_user)
        %Estamos na primeira coluna
        inicio=1;
        %Colunas possiveis para movimentação
        comparacao(1,1)=2;
        comparacao(1,2)=3;
        %Verificar a movimentação na coluna 2
        aux = find(tabuleiro(:,2));
        %Se aux não estiver vazio, se existirem peças na coluna
        if isequal(isempty(aux),1)==0
        %Se a peça do topo da coluna 2 for maior que a peça a mexer
        %entao podemos fazer a movimentação
        if (tabuleiro(min(aux),2)>N)==1
        %Movimentação
            comparacao(2,1)=1;
        end
        end
        %Se a coluna não tem peças
        if any(tabuleiro(:,2))==0 
            %Então a movimentação é possível 
            comparacao(2,1)=1;
        end
        aux = find(tabuleiro(:,3));
        if isequal(isempty(aux),1)==0  
        if (tabuleiro(min(aux),3)>N)==1
            comparacao(2,2)=1;
        end
        end
        if  any(tabuleiro(:,3))==0
            comparacao(2,2)=1;
        end
    end
     if (indice >=(N_user+1) & indice<=(2*N_user))
         inicio= 2;
        comparacao(1,1)=3;
        comparacao(1,2)=1;
       aux = find(tabuleiro(:,3));
       if isequal(isempty(aux),1)==0     
       if(tabuleiro(min(aux),3)>N)==1
            comparacao(2,1)=1;
       end
       end
       if any(tabuleiro(:,3))==0 
           comparacao(2,1)=1;
       end
        aux = find(tabuleiro(:,1));
        if isequal(isempty(aux),1)==0 
        if (tabuleiro(min(aux),1)>N)==1
            comparacao(2,2)=1;
        end
        end
        if any(tabuleiro(:,1))==0 
            comparacao(2,2)=1;
        end
     end 
      if (indice >=((2*N_user)+1) & indice<=(3*N_user))
          inicio=3;
        comparacao(1,1)=1;
        comparacao(1,2)=2;
       aux = find(tabuleiro(:,1));
       if isequal(isempty(aux),1)==0 
       if (tabuleiro(min(aux),1)>N)==1
            comparacao(2,1)=1;
       end
       end
        if any(tabuleiro(:,1))==0 
        comparacao(2,1)=1;
        end
        aux = find(tabuleiro(:,2));
       if isequal(isempty(aux),1)==0
        if (tabuleiro(min(aux),2)>N)==1
            comparacao(2,2)=1;
        end
       end
      if any(tabuleiro(:,2))==0 
          comparacao(2,2)=1;
      end
      end
%Tomar decisão conforme torre_final
if torre_final ==1
    if comparacao(2,1)==1
        fim = comparacao(1,1);
    else if comparacao(2,2)==1
            fim = comparacao(1,2);
        end
    end
end
if torre_final ==2
    if comparacao(2,2)==1
        fim = comparacao(1,2);
    else if comparacao(2,1)==1
            fim = comparacao(1,1);
        end
    end
end
    
    

