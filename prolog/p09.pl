% Pack consecutive duplicates of list elements into sublists

pack([], []).
pack([L], [[L]]).

% if the first two elements are equal, append the first to the head of the pack of the rest of the list
pack([H, H | T1], [[H | HH] | T2]) :- pack([H | T1], [HH | T2]).

% if the first two element are not the same, for a group with the first and pack the rest of the list
pack([X, Y | T1], [[X] | T2]) :- X \= Y, pack([Y | T1], T2).