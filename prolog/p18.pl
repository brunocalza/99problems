% Extract a slice from a list.

% ?- slice([a,b,c,d,e,f,g,h,i,k],3,7,L).

split(L, N, L1, L2) :- length(L1, N), append(L1, L2, L).

list_after_i(L, 1, L).
list_after_i(L, I, L) :- I > 1, length(L, I).
list_after_i([H | T], I, ListStartingAtI) :- I > 0, length([H | T], Length), Length > I, DEC is I - 1, list_after_i(T, DEC, ListStartingAtI). 

slice(List, I, K, Slice) :- SliceLength is K - I + 1, list_after_i(List, I, ListStartingAtI), split(ListStartingAtI, SliceLength, Slice, _).