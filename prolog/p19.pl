% Rotate a list N places to the left.

rotate(L, 0, L).
rotate(L, N, Rotated) :- N > 0, length(L, Length), S1Length is N mod Length, length(S1, S1Length),  append(S1, S2, L), append(S2, S1, Rotated).
rotate(L, N, Rotated) :- N < 0, length(L, Length), S2Length is -N mod Length, length(S2, S2Length), append(S1, S2, L), append(S2, S1, Rotated).