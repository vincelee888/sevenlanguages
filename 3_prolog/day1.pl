likes(wallace, cheese).
likes(gromit, cheese).
likes(wendolene, sheep).

friend(X, Y) 	:- 			\+(X = Y), 		likes(X, Z), likes(Y, Z).
%for friend		subgoal		not(equal)		must like same thing
%prolog will prompt corrections to typos!
% formally, friend is a Prolog rule with three variables, X, Y and Z.
% We refer to the rule as friend/2, as it has two parameters
% Rule has 3 subgoals, separated by commas, all of which need to be true for the rule to be true.

% facts
food_type(velveeta, cheese).
food_type(ritz, cracker).
food_type(spam, meat).
food_type(sausage, meat).
food_type(jolt, soda).
food_type(twinkie, dessert).
flavour(sweet, dessert).
flavour(savoury, meat).
flavour(savoury, cheese).
flavour(sweet, soda).

% rules
food_flavour(X, Y) :- food_type(X, Z), flavour(Y,Z).

different(red, green).
different(red, blue).
different(blue, green).
different(green, red).
different(green, blue).
different(blue, red).

coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
	different(Mississippi, Tennessee),
	different(Mississippi, Alabama),
	different(Alabama, Tennessee),
	different(Alabama, Mississippi),
	different(Alabama, Georgia),
	different(Alabama, Florida),
	different(Georgia, Florida),
	different(Georgia, Tennessee).

	