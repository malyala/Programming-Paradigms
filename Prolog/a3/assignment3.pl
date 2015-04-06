/*
 * Assignment 3 from Prolog
 * Keith Weaver
 * 10048505
 */

% the given time it takes per person
family(original, [father/1, mother/2, child/5, granny/10]).

% starter function. Passes in the starting list of people, to the move from
% first shore to the second, it has to be less then maxtime
moveFamily(FamilyName, MaxT, Moves, Time) :-
	family(FamilyName, People),
	moveToOtherShore(People, [], Moves, Time),
	Time =< MaxT.

% Passes in the people on both shores.
% Passes in the Time
moveBackToStart([],_,[],0).
moveBackToStart(StartingShorePeople, OtherShorePeople, [Move|MoreMoves], Time) :-
	member(Move/Time1, OtherShorePeople),%checks to see if theyre a member
	select(Move/Time1, OtherShorePeople, OtherShorePeopleRemaining),%removes the element from the othershore list
	moveToOtherShore([Move/Time1|StartingShorePeople], OtherShorePeopleRemaining, MoreMoves, Time2),%adds it to the current shore (well the opposite, if that makes senses.)
	Time is Time1+Time2.

moveToOtherShore([],_,[],0).
moveToOtherShore(StartingShorePeople, OtherShorePeople, [Move1+Move2|MoreMoves], Time) :-
	member(Move1/Time1, StartingShorePeople),
	select(Move1/Time1, StartingShorePeople, StartingShorePeopleRemaining1),
	member(Move2/Time2, StartingShorePeopleRemaining1),
	select(Move2/Time2, StartingShorePeopleRemaining1, StartingShorePeopleRemaining2),
	Move1 @< Move2,
	moveBackToStart(StartingShorePeopleRemaining2, [Move1/Time1, Move2/Time2|OtherShorePeople], MoreMoves, RestOfTime),
	Time is max(Time1, Time2) + RestOfTime.