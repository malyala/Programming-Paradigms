/*
 *
 *
 *
 *
 *
 *
 *
 */

family(original, [father/1, mother/2, child/5, granny/10]).

moveFamily(FamilyName, MaxT, Moves, Time) :-
	family(FamilyName, People),
	moveToOtherShore(People, [], Moves, Time),
	Time =< MaxT.

moveBackToStart([],_,[],0).
moveBackToStart(StartingShorePeople, OtherShorePeople, [Move|MoreMoves], Time) :-
	member(Move/Time1, OtherShorePeople),
	select(Move/Time1, OtherShorePeople, OtherShorePeopleRemaining),
	moveToOtherShore([Move/Time1|StartingShorePeople], OtherShorePeopleRemaining, MoreMoves, Time2),
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