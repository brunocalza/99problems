% Eliminate consecutive duplicates of list elements.

compress([], []).
compress([X], [X]).
compress([X, X | T], L)  :- compress([X | T], L).
compress([X, Y | T], [X | Z])  :- X \= Y,  compress([Y | T], Z).