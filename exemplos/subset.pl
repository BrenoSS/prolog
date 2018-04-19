%subset(set,subset) onde set e subset sao listas represetando conjuntos
%tal que seja possivel verificar se subset e subconjunto de set

subset([],[]).
subset([X|Y],[]).
subset([X|Y],[Z|W]):-X\==Z,subset(Y,[Z|W]).
subset([X|Y],[Z|W]):-X==Z,subset(Y,W).