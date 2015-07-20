listSection([X,_Y|Tail],[X|NewTail]):-
	listSection(Tail,NewTail),
	!.
listSection([],[]).
listSection([Z],[Z]).
listSection([_Head|Tail],NewTail) :-
	listSection(Tail,NewTail).

runningSum([],[]).
runningSum([X|Xs],Result):-
	sum([X|Xs],ListSum),
	StartValue is ListSum-X,
	runningSumHelper([X|Xs],StartValue,ListSum,Result).

runningSumHelper([],0,_,[]).
runningSumHelper([X|Xs],N,ListSum,NewResult):-
	NewSum is ListSum-PastN,
	N is PastN+X,
	append(Result,[NewSum],NewResult),
	runningSumHelper(Xs,PastN,ListSum,Result).

sum([],0).
sum([X|Xs],Y):-
	Y is X+Past,
	sum(Xs,Past).