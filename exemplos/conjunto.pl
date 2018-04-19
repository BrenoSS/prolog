%operacoes de conjunto

%uniao(L1,L2,L3)

nao_esta(X,[]).
nao_esta(X,[Y|Z]):-X\==Y,nao_esta(X,Z).

uniao([],[],[]).
uniao([X|Y],[A|B],[X,A|Z]):-X\==A,nao_esta(X,Z),nao_esta(A,Z),uniao(Y,B,Z).
uniao([X|Y],[A|B],[X|Z]):-X==A,nao_esta(X,Z),uniao(Y,B,Z).
uniao([X|Y],[],[X|Z]):-nao_esta(X,Z),uniao(Y,[],Z).
uniao([],[A|B],[A|Z]):-nao_esta(X,Z),uniao([],B,Z).

%interseccao(L1,L2,L3).

interseccao([],[],[]).
interseccao([X|Y],[A|B],[X|Z]):-X==A,nao_esta(X,Z),interseccao([X|Y],B,Z).
interseccao([X|Y],[A|B],Z):-X\==A,interseccao(Y,B,Z).