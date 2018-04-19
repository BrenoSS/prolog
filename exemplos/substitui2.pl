substitui(E1,E2,[],[]).
substitui(E1,E2,[Elem|Y],[E2|Z]):-E1==Elem,substitui(E1,E2,Y,Z).
substitui(E1,E2,[Elem|Y],[Elem|Z]):-E1\==Elem,substitui(E1,E2,Y,Z).