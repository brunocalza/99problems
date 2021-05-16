% Create a list containing all integers within a given range.

% range(4,9,L).

range(N, N,[N]).
range(Start, End, [Start | Tail]) :- Start \= End, Next is Start + 1, range(Next, End, Tail).