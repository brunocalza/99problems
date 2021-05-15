% Find the last element of a list.

my_last(X, [X]).
my_last(X, [_ | T]) :- my_last(X, T).