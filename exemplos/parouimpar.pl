%par e impar

conta([],0).
conta([_|Y],N):-(Y,N1),N is N1+1.

par(L):-conta(L,N), X is N mod 2, X==0.
impar(L):-conta(L,N), X is N mod 2, X\==0.