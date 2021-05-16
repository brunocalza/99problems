% Duplicate the elements of a list.

dupli([], []).
dupli([Head | Tail], [Head, Head | DuplicatedTail]) :- dupli(Tail, DuplicatedTail).