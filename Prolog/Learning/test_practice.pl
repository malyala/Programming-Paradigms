middle([X], X).
middle([X,Y],[X,Y]).
middle([_|Xs],Answer) :-
	append(Mid, [_], Xs),
	middle(Mid, Answer).
	
/* try select */
delAll([],_,[]).
delAll([X|Xs],X,ListResult) :-
	delAll(Xs, X, ListResult).
delAll([Y|Ys], X, [Y|ListResult]) :-
	Y \= X,
	delAll(Ys, X, ListResult).