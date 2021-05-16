% Decode a run-length encoded list

% [[4,a],b,[2,c],[2,a],d,[4,e]] -> [a,a,a,a,b,c,c,a,a,d,e,e,e,e]

replicate(0, _, []).
replicate(N, Letter, Result) :- N > 0, M is N - 1, append([Letter], PartialResult, Result), replicate(M, Letter, PartialResult).

decode([], []).
decode([[N, Letter] | Tail], Decoded) :- replicate(N, Letter, HeadDecoded), decode(Tail, DecodedTail),  append(HeadDecoded, DecodedTail, Decoded).
decode([Letter | Tail], Decoded) :- atom(Letter), decode(Tail, DecodedTail),  append([Letter], DecodedTail, Decoded).