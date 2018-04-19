%verifica_par


verifica_par(E1,E2,[X,Y|Z],Z):-E1==X,E2==Y,!.
verifica_par(E1,E2,[],[]).
verifica_par(E1,E2,[X|Z], L):-verifica_par(E1,E2,Z,L).