%shift_n_esq(N,L1,L2)


add_ultimo(X,[],[X]).
add_ultimo(X,[X1|Y],[X1|Z]):-add_ultimo(X,Y,Z).
shift_n_esq(0,L1,L1).
shift_n_esq(N,[X|Y],W):-N\==0,N1 is N-1,add_ultimo(X,Y,Z),shift_n_esq(N1,Z,W).
