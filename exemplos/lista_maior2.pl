%verificar se L1 e maior que L2. Isso sera verdade

lista_maior([X|Y],[]).
lista_maior([X|Y],[A|B]):-lista_maior(Y,B).