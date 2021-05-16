% Lotto: Draw N different random numbers from the set 1..M.

range(N, N,[N]).
range(Start, End, [Start | Tail]) :- Start \= End, Next is Start + 1, range(Next, End, Tail).

remove_at_helper(_, [], _, []).
remove_at_helper(Element, [Element | RemainingList], Position, CurrentPosition, RemainingList) :- Position is CurrentPosition.
remove_at_helper(Element, [X | Tail], Position, CurrentPosition, [X | RemainingTail]) :- Position \= CurrentPosition, NextPosition is CurrentPosition + 1, remove_at_helper(Element, Tail, Position, NextPosition, RemainingTail).

remove_at(Element, List, Position, RemainingList) :- remove_at_helper(Element, List, Position, 1, RemainingList).

remove_random_element(ElementRemoved, List, RemainingList) :- length(List, Length), LengthPlusOne is Length + 1, random(1, LengthPlusOne, RandomPosition), remove_at(ElementRemoved, List, RandomPosition, RemainingList).

rnd_select(_, 0, []).
rnd_select(List, N, [ElementRemoved | L]) :- N > 0, remove_random_element(ElementRemoved, List, RemainingList), DEC is N - 1, rnd_select(RemainingList, DEC, L).

lotto(N, Total, List) :- range(1, Total, TotalList), rnd_select(TotalList, N, List).