conc([],L,L).
conc([X|Y],L,[X|Z]):-conc(Y,L,Z).

substitui(E1,E2,[],[]).
substitui(E1,E2,[Elem|Y],[E2|Z]):-E1==Elem,substitui(E1,E2,Y,Z).
substitui(E1,E2,[Elem|Y],[Z|W]):-is_list(Elem),substitui(E1,E2,Elem,Z),substitui(E1,E2,Y,W).
substitui(E1,E2,[Elem|Y],[Elem|Z]):-E1\==E2,not(is_list(Elem)),substitui(E1,E2,Y,Z).