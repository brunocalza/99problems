% Find the number of elements of a list.

len([], 0).
len([_ | T], N) :- len(T, M), N is M + 1.