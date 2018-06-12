%Jo�o Domingos-Agosto 2015
%Programa que exemplifica as jogadas a tomar de forma a resolver o problema
%cl�ssico de recurs�o das torres de hanoi.O programa funciona para pe�as de
%1 a 10 contudo podemos alter� lo paa vermos uma solu��o com um n�mero
%maior de pe�as

%Inputs
aux_aux = input('N�mero de pe�as?\n');
if ((aux_aux>0) && (aux_aux<11))
    N=aux_aux;
else
    while (aux_aux<=0 | aux_aux>10)
    display(sprintf('Inserir um n�mero inteiro de 1 a 10'));
    aux_aux = input('N�mero de pe�as?\n');
    N=aux_aux;
    end
end
N_user=N;
%Pedir ao utilizador qual a forma��o final que deseja:
%forma��o na coluna do meio ;torre_final=1;
%forma��o na coluna da direita;torre_final=2;
aux = input('Posi��o final desejada?\n');
if ((isequal(aux,1)==1) | (isequal(aux,2)==1))
    torre_final=aux;
else
    while ((isequal(aux,1)==0) && (isequal(aux,2)==0))
    display(sprintf('S� existem 2 op��es\n1-Coluna meio\n2-Coluna direita\n'));
    aux = input('Posi��o final desejada?\n');
    torre_final=aux;
    end
end
%Vector com os movimentos a tomar. Linhas representam a pe�a a mexer , e a
%coluna representa qual o destino. Por  exemplo entrada i ,j indica que
%temos de mover a pe�a i para a torre j. A terceira dimens�o indica o
%n�mero da jogada , por exemplo entrada i,j,k indica que a jogada k
%consiste em mover a pe�a i para a torre j
vec_movimentos = zeros ((power(2,N)-1),4);
for i=1:size(vec_movimentos,1)
    vec_movimentos(i,1)=i;
end
tabuleiro = zeros(N,3);
tabuleiro(:,1)=1:N;
n_jogada =1;
%Jogada de batota
%Problema: quando N= par a torre_final produz o resultado contrario ao
%desejado isto � se torre_final=2 ou seja queremos a solu��o na coluna da
%direita o resultado original era na coluan do meio. Por isso troquei
%simplesmente porque reparei que o erro se dava apenas nos pares
  if mod(N,2)==0
       if torre_final==1
           torre_final=torre_final+1;
       elseif torre_final==2
            torre_final=torre_final-1;
        end
   end

[vec_movimentos,n_jogada,tabuleiro] = hanoi_code(N,torre_final,vec_movimentos,n_jogada,tabuleiro,N_user);
%Indices de matrizes come�am em 1 logo, n_jogadas para indexar entradas da
%matriz vec_movimentos tem de ser inicializado a 1 , contudo signfica que
%n_jogadas esta 1 jogada avan�ada face a realidade, logo � necess�ria no
%final do programa subtrair 1 unidade;
n_jogada= n_jogada-1;
info={'Jogada','Pe�a','In�cio','Fim'}; 
xlswrite('hanoi_resultados.xlsx',info,1,'A1');
xlswrite('hanoi_resultados.xlsx',vec_movimentos,1,'A2');
% clear;
% clc;
