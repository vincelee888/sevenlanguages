teaches(Paul, Biology).
teaches(Paul, PE).
teaches(Peter, Maths).
teaches(Pedro, Geography).

timeTable(RequiredLessons, AvailablePeriods, Result) :-
	length(RequiredLessons, TotalLessons),
	length(AvailablePeriods, TotalAvailablePeriods),
	TotalLessons =< TotalAvailablePeriods,
	timeTable(RequiredLessons, AvailablePeriods, [], Result).

timeTable([Lesson|TailLessons],[Period|TailPeriods], Acc, Result) :-
	teaches(Who,Lesson),
	timeTable(TailLessons, TailPeriods, [Who|Acc], Result).