% exam practice
% reverse
rev([X],[X]).
rev([X|Xs],ResultOfAppend) :-
	rev(Xs, Result),
	append(Result, [X], ResultOfAppend).


% delete all elements
delAll([],[]).
delAll([_],[]).
delAll([_|Xs],Result) :-
	delAll(Xs,Result).


% deletes second last
delSecondLast([],[]).
delSecondLast([_,Y],[Y]).
delSecondLast([X|Xs],Result) :-
	delSecondLast(Xs,ResultList),
	append([X],ResultList,Result).


% whats the second last value
secondLast([X,_],X).
secondLast([_|Xs],Result) :-
	secondLast(Xs,Result).

% is the element in the list
elemInList([X|_],Y) :-
	X = Y,
	!.
elemInList([_|Xs],Y) :-
	elemInList(Xs, Y).


% second element in the list
%secondElementInList([],[]).
secondElementInList([_,X|_],X).


% nineth element in list
numbraNine([_,_,_,_,_,_,_,_,A|_],A).

% nth element in the list
% list, item, number
nthElement([],_,0).
nthElement([X|Xs],X,N).
nthElement([X|Xs],Y,N) :-
	nthElement(Xs,Y,(N+1)).


% a simple acyclic graph
%move(one,two).
%move(two,three).
%move(one,four).
%move(four,three).

search(X,X,[X]).
search(First, Last, [First|Path]) :-
	move(First,Second),
	search(Second,Last,Path).

% a cyclic graph
move(a,b).
move(b,c).
move(c,d).
move(d,a).
move(c,e).
move(e,f).

search2(X,X,_,[X]).
search2(X,Y,Visited,[X|Path]) :-
	move(X,Z),
	not(member(Z,Visited)),
	search2(Z,Y,[Z|Visited],Path).


% 2013 exam
% graph searching question.
solid(a,b).
solid(b,c).
solid(d,e).
solid(f,e).

dashed(b,d).
dashed(c,f).
dashed(e,a).
dashed(e,f).


searchHelper(X,X,_,[X],_).
searchHelper(X,Y,Visited,[X|Path], 0) :-
	solid(X, Z),
	not(member(Z,Visited)),
	searchHelper(Z,Y,[Z|Visited],Path,1).
searchHelper(X,Y,Visited,[X|Path], 1) :-
	dashed(X, Z),
	not(member(Z,Visited)),
	searchHelper(Z,Y,[Z|Visited],Path,0).



search3(I,J,R) :- searchHelper(I,J,[],R,0).
