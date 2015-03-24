vampire(Name) :-
	whedon(_,_,Name,vampire).

category(Name, Cat) :-
	whedon(_,_,Name, Cat).

twice(Name) :-
	whedon(_,Name,Role, _),
	whedon(_,Name,Role2, _),
	(Role \= Role2).

hatTrick(Who) :-
	whedon(F, Who,_,_),
	whedon(A, Who, _,_),
	whedon(B, Who, _,_),
	(A \= B),
	(A \= F),
	(F \= B).

hasOscar(Name) :-
	oscar(award(_,_,_), person(Name,_)).


winner(X, Year, Award) :-
	oscar(award(Award,Year,winner), person(X,_)) ; oscar(award(Award, Year, winner), film(X)).



doubleNominee(Name) :-
	oscar(award(X,Z,winner), person(Name,_)),
	oscar(award(Y,W,winner), person(Name,_)),
	X \= Y ; Z \= W.