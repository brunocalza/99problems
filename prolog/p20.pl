% Remove the K'th element from a list.

% remove_at(X,[a,b,c,d],2,R).

remove_at_helper(_, [], _, []).
remove_at_helper(Element, [Element | RemainingList], Position, CurrentPosition, RemainingList) :- Position is CurrentPosition.
remove_at_helper(Element, [X | Tail], Position, CurrentPosition, [X | RemainingTail]) :- Position \= CurrentPosition, NextPosition is CurrentPosition + 1, remove_at_helper(Element, Tail, Position, NextPosition, RemainingTail).

remove_at(Element, List, Position, RemainingList) :- remove_at_helper(Element, List, Position, 1, RemainingList).