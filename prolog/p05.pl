% Reverse a list.

reverse([X], [X]).
reverse([H | T], R) :- reverse(T, RT), append(RT, [H], R).  