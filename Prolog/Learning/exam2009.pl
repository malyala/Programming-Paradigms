firstN([],0,0).
firstN([X|_],0,X).
firstN([X|Xs],N,Sum) :-
	NMinus is X-1,
	firstN(Xs,NMinus,Result),
	Sum is Result+X,
	N>0.

%not correct for some reason

red(a).
red(c).
blue(c,d).
blue(a,b).

green(X,Y) :-
	red(X),
	blue(X,Y).
green(X,Y) :-
	blue(Y,X),
	red(Y).

pink(X,Y) :-
	red(X),
	!,
	blue(X,Y).
pink(X,Y) :-
	blue(Y,X),
	red(Y).

yellow(X,Y) :-
	red(X),
	blue(X,Y),
	!.
yellow(X,Y) :-
	blue(Y,X),
	red(Y).


orange(X,Y) :-
	red(X),
	blue(X,Y).
orange(X,Y) :-
	blue(Y,X),
	!,
	red(Y).

white(X,Y) :-
	not(red(X)),
	red(Y),
	blue(X,Y).

knows(L,P,R):- knowsHelper(L,P,[],R).

knowsHelper(_,[],[],[]).
knowsHelper(L,[Pl|Pls],NewVisited,NewResult) :-
	member(L,Pl),
	knowsHelper(L,Pls,Visited,Result),
	findPeople(Pl,Visited,NewPeople),
	append(NewPeople,Result,NewResult),
	append(NewPeople,Visited,NewVisited).	
knowsHelper(L,[Pl|Pls],Visited,Result):-
	not(member(L,Pl)),
	knowsHelper(L,Pls,Visited,Result).

knows2(_,[],[]).
knows2(Target,[List|Lists],NewResult) :-
	member(Target,List),
	append(List, Result, NewResult),
	knows2(Target,Lists,Result).
knows2(Target,[List|Lists],Result):-
	not(member(Target,List)),
	knows2(Target,Lists,Result).


findPeople([],_,[]).
findPeople([X|Xs],Visited,Result):-
	member(X,Visited),
	findPeople(Xs,Visited,Result).
findPeople([X|Xs],Visited,NewResult):-
	not(member(X,Visited)),
	append([X],Result,NewResult),
	findPeople(Xs,Visited,Result).