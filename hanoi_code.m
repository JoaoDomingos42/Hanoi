function [vec_movimentos, n_jogada,tabuleiro] =hanoi_code(N,torre_final,vec_movimentos,n_jogada,tabuleiro,N_user)
%torre_final == 1 consiste no deslocamento para a torre 1 posi��o � direita
%torre_final == 2 consiste no deslocamento para a torre 2 posi��es �
%direita
 if N == 0;
     
     return
 else


[vec_movimentos, n_jogada,tabuleiro]=hanoi_code(N-1,torre_final,vec_movimentos,n_jogada,tabuleiro,N_user);
%Deixar a recurs�o chegar ao fundo e de seguida representa as pe�as e
%limpar logo  asseguir para nao haver sobreposi�ao
[barra_1,barra_2,barra_3]=hanoi_game(tabuleiro,N_user);
clf;
y=[10 10 10];
bar(y,0.1,'k');
hold on;
%limpar(barra_1, barra_2, barra_3);

[vec_movimentos, n_jogada, tabuleiro]= shift(N,torre_final,vec_movimentos,n_jogada,tabuleiro,N_user);
%Depois do shift , o tabuleiro alterou a sua posi��o logo � necess�rio
%voltar a representar o tabuleiro e limpar para que n�o tenhamos
%sobreposi�ao
[barra_1,barra_2,barra_3]=hanoi_game(tabuleiro,N_user);
clf;
y=[10 10 10];
bar(y,0.1,'k');
hold on;
%limpar(barra_1, barra_2, barra_3);
[vec_movimentos, n_jogada,tabuleiro]=hanoi_code(N-1,torre_final,vec_movimentos,n_jogada,tabuleiro,N_user);

end