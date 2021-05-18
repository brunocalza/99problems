% Group the elements of a set into disjoint subsets.

% group3([aldo,beat,carla,david,evi,flip,gary,hugo,ida],G1,G2,G3).

group3(L, G1, G2, G3) :- length(G1, 2), length(G2, 3), length(G3, 4), append([G1, G2, G3], L).

% group([aldo,beat,carla,david,evi,flip,gary,hugo,ida],[2,2,5],Gs).

combination(0, _, []).
combination(N, [Element | Tail], [Element | ChosenTail]) :- N > 0,  length([Element | ChosenTail], N), N1 is N - 1, combination(N1, Tail, ChosenTail).
combination(N, [_ | Tail], ChosenList) :- N > 0, length(ChosenList, N), combination(N, Tail, ChosenList).

group([],[],[]).
group(G,[N1|Ns],[G1|Gs]) :- 
   combination(N1,G,G1),
   subtract(G,G1,R),
   group(R,Ns,Gs).