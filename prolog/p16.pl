% Drop every N'th element from a list.

drop_helper([], _, _, []).
drop_helper([_ | T], N, I, Dropped) :- 0 is I mod N, INC is I + 1, drop_helper(T, N, INC, Dropped).
drop_helper([H | T], N, I, Dropped) :- not(0 is I mod N), INC is I + 1, drop_helper(T, N, INC, TailDropped), append([H], TailDropped, Dropped).

drop(L, N, Dropped) :- drop_helper(L, N, 1, Dropped).