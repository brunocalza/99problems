% Generate the combinations of K distinct objects chosen from the N elements of a list

combination(0, _, []).
combination(N, [Element | Tail], [Element | ChosenTail]) :- N > 0,  length([Element | ChosenTail], N), N1 is N - 1, combination(N1, Tail, ChosenTail).
combination(N, [_ | Tail], ChosenList) :- N > 0, length(ChosenList, N), combination(N, Tail, ChosenList).