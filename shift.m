function [vec_movimentos, n_jogada, tabuleiro] =shift(N,torre_final,vec_movimentos,n_jogada,tabuleiro,N_user)
%Pe�a actual = pe�a a mexer
vec_movimentos(n_jogada,2)=N;
[inicio,fim,comparacao]= game(N,tabuleiro,torre_final,N_user);
%Preencher a matrix vec_movimentos com a coluna inicial e coluna final 
%que resultam da funcao game
vec_movimentos(n_jogada,3)=inicio;
vec_movimentos(n_jogada,4)=fim;
%Codigo para preencher o tabuleiro
%Primeiro: procurar os indices igual a 0 na coluna inicial
aux_1 = find(tabuleiro(:,inicio)==0);
%Se aux_1 n�o estiver vazio, colocar a zero a posi��o do tabuleiro onde
%pe�a a mexer se encontrava inicialmente antes de ser movida
if isequal(isempty(aux_1),1)==0 
tabuleiro(max(aux_1)+1,inicio)=0;
else
    %Se tabuleiro vazio: a pe�a a mexer � a do topo
    tabuleiro(1,inicio)=0;
end
%Segundo:procurar os indices igual a 0 na coluna final 
aux = find(tabuleiro(:,fim)==0);
%Se aux n�o estiver vazio
if isequal(isempty(aux_1),1)==0 
 %Colocar a pe�a no fundo da coluna, max(aux)
tabuleiro(max(aux),fim)=N;
%Se o tabuleiro estiver vazio:colocar a pe�a no fundo da coluna final
else
    tabuleiro(N_user,fim)=N;
end
n_jogada =n_jogada+1;
end