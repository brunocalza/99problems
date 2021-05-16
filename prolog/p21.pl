% Insert an element at a given position into a list.

% insert_at(alfa,[a,b,c,d],2,L).
split(L, N, L1, L2) :- length(L1, N), append(L1, L2, L).

insert_at(Element, List, Position, NewList) :- SplitLength is Position - 1, split(List, SplitLength, S1, S2), append([S1, [Element], S2], NewList).