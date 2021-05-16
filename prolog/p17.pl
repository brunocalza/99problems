% Split a list into two parts; the length of the first part is given.

% ?- split([a,b,c,d,e,f,g,h,i,k],3,L1,L2).

split(L, N, L1, L2) :- length(L1, N), append(L1, L2, L).