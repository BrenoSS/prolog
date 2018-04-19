%lista_maior(L1,L2)

lista_maior([_|_],[]).
lista_maior([_|Y],[_|B]):-lista_maior(Y,B).