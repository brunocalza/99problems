% Modified run-length encoding.

% See p10.pl.
pack([], []).
pack([L], [[L]]).

% if the first two elements are equal, append the first to the head of the pack of the rest of the list
pack([H, H | T1], [[H | HH] | T2]) :- pack([H | T1], [HH | T2]).

% if the first two element are not the same, for a group with the first and pack the rest of the list
pack([X, Y | T1], [[X] | T2]) :- X \= Y, pack([Y | T1], T2).

encode_packed([], []).
encode_packed([[H | T] | R], [[N, H] | RE]) :- length([H | T], N), N > 1, encode_packed(R, RE).
encode_packed([[H | T] | R], [H | RE]) :- length([H | T], N), N is 1, encode_packed(R, RE).
encode_modified(L, Encoded) :- pack(L, Packed), encode_packed(Packed, Encoded).