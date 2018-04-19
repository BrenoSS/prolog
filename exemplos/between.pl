%between(N1,N2,X) - dados N1 e N2, gerar uma lista com todos os inteiros entre N1 e N2.
% entre dois numeros iguais e possivel formar uma lista com o numero apenas
% entre dois numeros diferentes, forma-se uma lista onde o primeiro numero e N1
% se N1 e diferente de N2 e a cauda da lista tem como primeiro numero o proximo da sequencia
between(N1,N1,[N1]).
between(N1,N2,[N1|Y]):-N1\==N2, N is N1+1,between(N,N2,Y).