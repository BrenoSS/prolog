%cria lista

conta_ocorr(E,[],0):-!.
conta_ocorr(E,[E],1):-!.
conta_ocorr(E,[E|Y],S):- conta_ocorr(E,Y,S1), S is S1 + 1, !.
conta_ocorr(E, [X|Y], S):-E\==X,conta_ocorr(E,Y,S).

retira_elem(E, [], []):-!.
retira_elem(E,[E|Y],L):-retira_elem(E,Y,L),!.
retira_elem(E,[X|Y],[X|L]):-E\==X,retira_elem(E,Y,L).


cria_lista:-write('Digite a lista'),
			read(Lista),
			cria_lista(Lista, Resultado),
			write('Lista resultante:'),
			write(Resultado),
			nl.
cria_lista([],[]).
cria_lista([X|Y],[[X,N]|L]):-conta_ocorr(X,Y,N1), N is N1 + 1, retira_elem(X,Y,Z), cria_lista(Z,L).
