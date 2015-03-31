% Assignment 6
% Keith Weaver
% 10048505

legalPath([],[]).
legalPath([X],[X]).
legalPath([X,_],[X]).
legalPath([X,_,Z|Zs],[X|Path]):-
	legalPath([Z|Zs],Path).
legalPath([X,_,_|Zs],[X|Path]):-
	legalPath(Zs, Path).

betterPath(Path1,Path2,Path1):-
	sum_list(Path1,Sum1),
	sum_list(Path2,Sum2),
	Sum1 >= Sum2.
betterPath(Path1,Path2,Path1):-
	sum_list(Path1,Sum1),
	sum_list(Path2,Sum2),
	Sum1<Sum2.

bestPathOfList([X],X).
bestPathOfList([X|Xs],Best):-
	bestPathOfList(Xs, Path2),
	betterPath(X,Path2,Best).

hopscotch(List,Best):-
	setof(P,legalPath(List,P),Paths),
	bestPathOfList(Paths,Best).