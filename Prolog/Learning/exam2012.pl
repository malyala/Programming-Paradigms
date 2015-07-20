changeList([],[]).
changeList([X],[X]).
changeList([X,Y],[X,Y]).
changeList([X,Y,Z|Tail],[Z|NewTail]) :-
	X < Y,
	changeList(Tail,NewTail).
changeList([X,Y,Z|Tail],[X|NewTail]) :-
	Y < Z,
	changeList(Tail,NewTail),
	!.
changeList([X,Y,Z|Tail],[Y|NewTail]) :-
	X < Z,
	changeList(Tail,NewTail).


power10(M,0):-
	M < 10;
	M mod 10 =\= 0.
power10(M,NewN):-
	M > 9,
	M mod 10 =:= 0,
	R is M/10,
	power10(R,N),
	NewN is N+1,
	!.
