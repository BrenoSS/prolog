%shift dir

add_prim(X, [], [X]).
add_prim(_, [X1|Y], [X1|L]):-add_prim(_, Y, L).
shift_dir([X|Y], L):-add_prim(_, Y, L).