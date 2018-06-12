%João Domingos-Agosto 2015
%Programa que exemplifica as jogadas a tomar de forma a resolver o problema
%clássico de recursão das torres de hanoi.O programa funciona para peças de
%1 a 10 contudo podemos alterá lo paa vermos uma solução com um número
%maior de peças

%Inputs
aux_aux = input('Número de peças?\n');
if ((aux_aux>0) && (aux_aux<11))
    N=aux_aux;
else
    while (aux_aux<=0 | aux_aux>10)
    display(sprintf('Inserir um número inteiro de 1 a 10'));
    aux_aux = input('Número de peças?\n');
    N=aux_aux;
    end
end
N_user=N;
%Pedir ao utilizador qual a formação final que deseja:
%formação na coluna do meio ;torre_final=1;
%formação na coluna da direita;torre_final=2;
aux = input('Posição final desejada?\n');
if ((isequal(aux,1)==1) | (isequal(aux,2)==1))
    torre_final=aux;
else
    while ((isequal(aux,1)==0) && (isequal(aux,2)==0))
    display(sprintf('Só existem 2 opções\n1-Coluna meio\n2-Coluna direita\n'));
    aux = input('Posição final desejada?\n');
    torre_final=aux;
    end
end
%Vector com os movimentos a tomar. Linhas representam a peça a mexer , e a
%coluna representa qual o destino. Por  exemplo entrada i ,j indica que
%temos de mover a peça i para a torre j. A terceira dimensão indica o
%número da jogada , por exemplo entrada i,j,k indica que a jogada k
%consiste em mover a peça i para a torre j
vec_movimentos = zeros ((power(2,N)-1),4);
for i=1:size(vec_movimentos,1)
    vec_movimentos(i,1)=i;
end
tabuleiro = zeros(N,3);
tabuleiro(:,1)=1:N;
n_jogada =1;
%Jogada de batota
%Problema: quando N= par a torre_final produz o resultado contrario ao
%desejado isto é se torre_final=2 ou seja queremos a solução na coluna da
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
%Indices de matrizes começam em 1 logo, n_jogadas para indexar entradas da
%matriz vec_movimentos tem de ser inicializado a 1 , contudo signfica que
%n_jogadas esta 1 jogada avançada face a realidade, logo é necessária no
%final do programa subtrair 1 unidade;
n_jogada= n_jogada-1;
info={'Jogada','Peça','Início','Fim'}; 
xlswrite('hanoi_resultados.xlsx',info,1,'A1');
xlswrite('hanoi_resultados.xlsx',vec_movimentos,1,'A2');
% clear;
% clc;
