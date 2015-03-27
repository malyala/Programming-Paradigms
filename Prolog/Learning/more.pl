esort([X],[X]).
esort([X,Y],[Y,X]):-
	X>Y.
esort([X,Y],[X,Y]):-
	X<Y.
esort([X,Y|Xs],[Y,X|Result]):-
	X > Y,
	isort(Xs,Result).
esort([X,Y|Xs],[X,Y|Result]):-
	Y > X,
	isort(Xs, Result).


insert(X,[],[X]).
insert(X,[Y|Ys],[X,Y|Ys]) :-
    X =< Y.
insert(X,[Y|Ys],[Y|Tail]) :-
    X > Y,
    insert(X,Ys,Tail).
isort([],[]).
isort([X|Xs],Result) :-
    isort(Xs,SortedTail),
    insert(X,SortedTail,Result).


re([],[]).
re([X|Xs],Answer):-
	re(Xs, Result),
	append(Result,[X],Answer).

palidrome([]).
palidrome(X):-
	re(X, L),
	X = L.

greatofthetwo(X, Y):-
	X > Y.