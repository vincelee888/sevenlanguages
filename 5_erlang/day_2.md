control structures
===
case statements use pattern matching
if statements use guard clauses

anonymous functions
===
Negate = fun(I) -> -I end.
Negate(100) // -100

Lists and Higher-order functions
===

higher-order functions are a feature of a language whereby functions can be used as arguments to other functions.

lists:foreach 		pass each value through function
lists:map 			pass each value through function and return results in a new list
lists:filter		pass each value through boolean-returning function and return results in a new list
lists:all			return boolean if all values satisfy filter function
lists:any 			return list of any values that satisfy filter function
lists:takewhile		add items from the head of a list, whilst each satisfy a filter function, stop adding items when filter fails, and return list
lists:dropwhile		remove items from the head of a list, where each satisfy a filter function, return rest of list when filter fails

foldl
===

Rolls up results of a function across a list into single value

List Construction
===

Can use [H|T] syntax on right hand side of pattern match too:

double_all([H|T]) -> [H + H]|double_all(T).

[1 | [2, 3]] 	=> [1,2,3]
[[2, 3], 1] 	=> [[2,3], 1]
[[] | [2,3]] 	=> [[], 2,3]
[1 | []] 		=> [1]

second argument must be list
whatever is on left is added as first element of new list

List Comprehensions
===

Allows you to perform multiple maps at once

[X || X <- [1,2,3,4], X < 4, X > 1]. 				=> [2,3]
[{X, Y} || X <- [1,2,3,4], X < 3, Y <- [5,6]]. 		=> [{1,5}, {2,5}, {1, 6}, {2, 6}]