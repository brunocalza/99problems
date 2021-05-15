% Flatten a nested list structure.

my_flatten([], []).
my_flatten([H | T], L) :- is_list(H), flatten(H, FH), flatten(T, FT), append(FH, FT, L).
my_flatten([H | T], L) :- not(is_list(H)), flatten(T, FT), append([H], FT, L).