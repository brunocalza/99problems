% Extract a given number of randomly selected elements from a list.

% rnd_select([a,b,c,d,e,f,g,h],3,L).

remove_at_helper(_, [], _, []).
remove_at_helper(Element, [Element | RemainingList], Position, CurrentPosition, RemainingList) :- Position is CurrentPosition.
remove_at_helper(Element, [X | Tail], Position, CurrentPosition, [X | RemainingTail]) :- Position \= CurrentPosition, NextPosition is CurrentPosition + 1, remove_at_helper(Element, Tail, Position, NextPosition, RemainingTail).

remove_at(Element, List, Position, RemainingList) :- remove_at_helper(Element, List, Position, 1, RemainingList).

remove_random_element(ElementRemoved, List, RemainingList) :- length(List, Length), LengthPlusOne is Length + 1, random(1, LengthPlusOne, RandomPosition), remove_at(ElementRemoved, List, RandomPosition, RemainingList).

rnd_select(_, 0, []).
rnd_select(List, N, [ElementRemoved | L]) :- N > 0, remove_random_element(ElementRemoved, List, RemainingList), DEC is N - 1, rnd_select(RemainingList, DEC, L).