function [inicio,fim,comparacao]= game(N,tabuleiro,torre_final,N_user)
fim = 0;
comparacao = zeros(2,2);
indice = find(tabuleiro ==N);
%Ver posi��o dos indices e conforme estejamos na primeira, segunda , ou
%terceira coluna o vector de compara��es cont�m informa��o relativa �s
%outras 2 torres. 1 indica que � possivel mover a pe�a para essa posi��o 0
%indica que n�o. Vector compara��es com 2 linhas e 2 colunas. 1 linha
%indica as 2 torres que s�o analisadas. Segunda linha indica se a repectiva
%torre � poss�vel ou n�o a movimenta��o.
    if (indice >=1 & indice<=N_user)
        %Estamos na primeira coluna
        inicio=1;
        %Colunas possiveis para movimenta��o
        comparacao(1,1)=2;
        comparacao(1,2)=3;
        %Verificar a movimenta��o na coluna 2
        aux = find(tabuleiro(:,2));
        %Se aux n�o estiver vazio, se existirem pe�as na coluna
        if isequal(isempty(aux),1)==0
        %Se a pe�a do topo da coluna 2 for maior que a pe�a a mexer
        %entao podemos fazer a movimenta��o
        if (tabuleiro(min(aux),2)>N)==1
        %Movimenta��o
            comparacao(2,1)=1;
        end
        end
        %Se a coluna n�o tem pe�as
        if any(tabuleiro(:,2))==0 
            %Ent�o a movimenta��o � poss�vel 
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
%Tomar decis�o conforme torre_final
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
    
    

