
%traducao de uma lista vazia e a lista vazia
%traducao de uma lista do tipo [X|Y] resulta em uma lista [Z|W] se t(X,Z) e a traducao de 
%Y resulta em W

t(0, zero).
t(1, um).
t(2, dois).
t(3, tres).
t(4, quatro).
t(5, cinco).
t(6, seis).
t(7, sete).
t(8, oito).
t(9, nove).

traduz([], []).
traduz([X|Y], [Z|W]) :- t(X,Z),traduz(Y,W).
