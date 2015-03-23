vampire(Name) :-
	whedon(_,_,Name,vampire).

category(Name, Cat) :-
	whedon(_,_,Name, Cat).

twice(Name) :-
	whedon(_,_,Name,Role),
	whedon(_,_,Name,Role2),
	(Role \= Role2).

hasOscar(Name) :-
	oscar(award(_,_,_), person(Name,_)).

/*
winner(Type, Year, Award) :-
	oscar(award(_,_,_), person(_,_)).
*/