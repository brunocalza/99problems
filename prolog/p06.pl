% Find out whether a list is a palindrome.

reverse([X], [X]).
reverse([H | T], R) :- reverse(T, RT), append(RT, [H], R).  

is_palindrome(X) :- reverse(X,X).