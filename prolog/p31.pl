% Determine whether a given integer number is prime.

% This implementation finds all the numbers that divides N, between 1 and N

range(N, N, [N]).
range(N, M, [N | RangeTail]) :- N \= M, N1 is N + 1, range(N1, M, RangeTail).

divides([], _, []).
divides([H | T], N, Divisors) :- not(0 is N mod H), divides(T, N, Divisors).
divides([H | T], N, [H | DivisorsTail]) :- 0 is N mod H, divides(T, N, DivisorsTail).

is_prime(N) :- N > 1, range(1, N, L), divides(L, N, [1, N]), !.