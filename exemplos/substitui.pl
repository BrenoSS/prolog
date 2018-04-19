% dados dois elementos e uma lista, substituir todas as ocorrncias do primeiro elemento na
% lista pelo segundo

substitui(E1,E2,[],[]).
substitui(E1,E2,[E1],[E2]).
substitui(E1,E2,[Elem],[Elem]):-E1\==Elem.
substitui(E1,E2,[E1|Y],[E2|Z]):-substitui(E1,E2,Y,Z),!.
substitui(E1,E2,[Elem|Y],[Elem|Z]):-substitui(E1,E2,Y,Z).