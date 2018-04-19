%maxlista(Lista,Max), onde Max assume o maior valor da lista
%o primeiro elemento de uma lista é o maximo se ele for maior que o max elemento da cauda 
%da lista
%maxlista de uma lista com um elemento e o proprio elemento.
maxlista([Elem],Elem).
maxlista([Elem|Y], Elem):-maxlista(Y, Elem1),Elem>Elem1.
maxlista([Elem|Y], Elem1):-maxlista(Y,Elem1),Elem<Elem1.