verifica_par(E1,E2,[],[]).
verifica_par(E1,E2,[E1,E2|Y],Y).
verifica_par(E1,E2,[Elem1|Y],Z):-E1\==Elem1,verifica_par(E1,E2,Y,Z).