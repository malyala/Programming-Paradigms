% taken(fred,cisc121,b) means fred took cisc121 and his mark was b
taken(fred,cisc121,b).
taken(george,cisc121,b).
taken(ron,cisc121,a).
taken(fred,cisc124,c).
taken(harry,cisc124,a).
taken(george,cisc124,b).
taken(george,cisc235,a).
taken(harry,cisc260,a).
taken(draco,cisc260,c). 
taken(george,cisc220,c).

% teaches(lamb,cisc260) means lamb teaches cisc260
teaches(lamb,cisc260).
teaches(lamb,cisc220).
teaches(powley,cisc121).
teaches(mcleod,cisc124).

% Rule: an "A student" is a student who has received an A for
% at least one course.  This rule as is gets a "singleton
% variable" warning
a_student(S) :- taken(S,_Course,a).

% Rule: Teacher has taught Student if Teacher has taught some
% course that Student has taken.
taught(Teacher,Student) :-
  teaches(Teacher,Course),
  taken(Student,Course,_).
  
% A "good student" is a student who has received either an A
% or a B in some course.  First definition uses two separate rules.
good1(S) :-
  taken(S,_,a).
good1(S) :-
  taken(S,_,b).

% Second version of good student: uses ";" to mean "or".
good2(S) :-
  taken(S,_,a) ; taken(S,_,b).
