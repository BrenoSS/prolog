%verificar se um dado elemento pertence a uma lista em qualquer nivel

v_elem(Elem,[Elem|_]).
v_elem(Elem,[Elem1|_]):-Elem\==Elem1,is_list(Elem1),v_elem(Elem,Elem1).
v_elem(Elem,[Elem1|Y]):-Elem\==Elem1,v_elem(Elem,Y),not(is_list(Elem1)).
