
function [barra_1,barra_2,barra_3]= hanoi_game(tabuleiro,N_user)
%Criar as colunas base
y=[10 10 10];
bar(y,0.1,'k');
hold on;
[barra_1,barra_2,barra_3]=representa_tabuleiro(tabuleiro,N_user);
pause(0.5);
end