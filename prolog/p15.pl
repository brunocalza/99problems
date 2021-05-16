% Duplicate the elements of a list a given number of times.

replicate(0, _, []).
replicate(N, Letter, Result) :- N > 0, M is N - 1, append([Letter], PartialResult, Result), replicate(M, Letter, PartialResult).

dupli([], _, []).
dupli([H | T], N, Replicated) :- replicate(N, H, ReplicatedHead), dupli(T, N, ReplicatedTail), append(ReplicatedHead, ReplicatedTail, Replicated).