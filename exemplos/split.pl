%programa split que divide uma lista de numeros em duas, uma com os positivos e outra com 
%os negativos

split([],[],[]).
split([X|Y],[X|Z],W):-X>=0,split(Y,Z,W).
split([X|Y],Z,[X|W]):-X<0,split(Y,Z,W).