fib(0,0).
fib(1,1).
fib(Index,Value) :-
	succ(PreviousIndex,Index),
	succ(PreviousPreviousIndex,PreviousIndex),
	fib(PreviousIndex,PreviousValue),
	fib(PreviousPreviousIndex,PreviousPreviousValue),
	plus(PreviousPreviousValue,PreviousValue,Value).

myReverse([],[]).
myReverse([A],[A]).
myReverse([Head|Tail], Result) :-
	myReverse(Tail, Reversed),
	append(Reversed, [Head], Result).

accRev([Head|Tail],Accumulator,Result) :-
	accRev(Tail,[Head|Accumulator], Result).
	accRev([],A,A).

reverse([343,15,41,1], What).

smallest([X|Xs], Result) :-
	smallest(Xs, X, Result).

smallest([], Result, Result).
smallest([X|Xs], CurrSmallest, Result) :-
	NewSmallest is min(X, CurrSmallest),
	smallest(Xs, NewSmallest, Result).

min_list([32,43,24,34241,56], What).

sort([1,3,6,2,3], What).