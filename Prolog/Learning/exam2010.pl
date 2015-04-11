count([X|Xs],N) :-
	X mod 3 =:= 1,
	count(Xs,TailCount),
	N is TailCount+2.
count([X|Xs],N):-
	X > 10,
	count(Xs, TailCount),
	N is TailCount+3.
count([_|Xs],N) :-
	count(Xs, TailCount),
	N is TailCount+1.
count([],0).