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

different(red, green). different(red, blue).
different(green, red). different(green, blue).
different(blue, red). different(blue, green).

coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
    different(Mississippi, Tennessee),
    different(Mississippi, Alabama),
    different(Alabama, Tennessee),
    different(Alabama, Mississippi),
    different(Alabama, Georgia),
    different(Alabama, Florida),
    different(Georgia, Florida),
    different(Georgia, Tennessee).

% Mississippi = Georgia wtf?

% express the context of the issue and then make queries on it, letting Prolog do the work

% Unification
% ---

% Java/Ruby use variable assignment to unify two structures to state they are equal 
% eg. x = 10

cat(lion).
cat(tiger).

dorothy(X, Y, Z) :- X = lion, Y = tiger, Z = bear.
twin_cats(X, Y) :- cat(X), cat(Y).

% dorothy(lion, tiger, bear).
% direct match, so unificiation

% dorothy(One, Two, Three).
% Unifies One to lion, Two to tiger, Three to bear, from X = lion etc


% Douglas Adams reference:
% One
% |    .
% ... 1,000,000 ............ 10,000,000 years later
% 
%       >> 42 << (last release gives the question)

% uses - timetabling, scheduling deliveries, keywords