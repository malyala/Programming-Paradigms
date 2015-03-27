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

/*	
set_difference([],[],[]).
set_difference([X],[],[X]).
set_difference([],[X],[X]).
set_difference([X|Xs],[Y|Ys],Result):-
	set_difference(Xs,Ys, Result),
	X == Y.
set_difference([X|Xs],[Y|Ys],Result):-
	set_difference(Xs, Ys, Result]),
	X \= Y.
*/

blue(c,e).
blue(d,e).

green(a,d).
green(b,c).
green(b,e).
green(e,d).

connec(X,Y):-
	blue(X,Z),
	green(Z,Y).
connec(X,Y):-
	green(X,Z),
	blue(Z,Y).

shifr([X],[X]).
shifr([X|Xs],New):-
	append(Xs,[X],New).

maxMark([],0).
maxMark([project(_,_,M)],M).
maxMark([project(_,_,M)|More], New):-
	New > M,
	maxMark(More,New).
maxMark([project(_,_,M)|More], M):-
	New < M,
	maxMark(More,New).

p(a,3).
p(b,6).
p(c,4).
p(d,2).
p(e,3).

q(b,9).
q(c,2).
q(d,5).
q(e,1).
q(f,6).

r(X):-
	p(X,3).
r(X):-
	q(X,5).
r(X):-
	p(X,N),
	q(X,D),
	N>D.
/*Remember to check all the elements of the second condition*/

notthere(Y, [X]):-
	Y \= X.
notthere(Y, [X|Xs]):-
	Y \= X,
	notthere(Y, Xs).