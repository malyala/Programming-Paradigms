rev([],[]).
rev([X|Xs], Answer):-
	rev(Xs,RevTail),
	append(RevTail,[X], Answer).

elem(X,[X|_]).
elem(X,[_|Tail]):-
	elem(X,Tail).
	
conc(L,[],L).
conc(L,[Y|Ys],[Y|Tail]):-
	conc(L,Ys,Tail).

	
%conc([],L,L).
%conc([X|Xs],Ys,[X|TailOfResult]) :-
%	conc(Xs,Ys,TailOfResult).

len([],0).
len([_|Xs],TotalLength):-
	len(Xs, TailLength),
	TotalLength is TailLength+1.
	


deletethree([_,_,_],[]).
deletethree([X|Xs],[X|Tail]):-
	deletethree(Xs, Tail).

lastitem([I], I).
lastitem([_|Ls], I):-
	lastitem(Ls, I).


%evenLen(L):-
	%length(L, N),
	%Itemlen is N,
	%Itemlen//2 =:= 0.


%73-74

maxx([X],X).
maxx([X|Xs],Max):-
	maxx(Xs, Max),
	X < Max.
maxx([X|Xs], X):-
	maxx(Xs,Max),
	X > Max.
	
set_difference([],[],[]).
set_difference([X],[],[X]).
set_difference([],[X],[X]).
set_difference([X|Xs],[Y|Ys],Result):-
	set_difference(Xs,Ys, Result),
	X == Y.
set_difference([X|Xs],[Y|Ys],Result):-
	set_difference(Xs, Ys, Result]),
	X \= Y.

	