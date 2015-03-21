Recursion
===

Not tail-recursive optimised due to JVM
have to use tail-optimsed loop and recur keywords

(defn size [v]
	(loop [l v, c 0]
		(if (empty? l)
			c
			*recur (rest l (inc c))
		)
	)
)

Sequences
===
implementation-independent abstraction around collections, string and file system structures (eg streams and directories), and Java collections. 
If it supports first, rest and cons, can wrap it in a sequence.

Tests
===
(every? number? [1 2 3 :four]) 				=> false
(som nil? [1 2 nil]) 						=> true
(not-every? odd? [1 3 5])					=> false
(not-any? number?	[:one :two :three])		=> true

Changing sequences
===
filter: 	run list through function and return new list of same length or less, containing elements that pass predicate
map: 		run list through function to output list of same length
for: 		like map, but can work on several lists, producing list of length of all lists together - cartesian product of lists
reduce: 	foldl; reduce list to single value
sort: 		sort a list 
sort-by:	sort a list by if statement in function

Lazy Evaluation and Infinite Sequences
===
in mathematics, infinite sequences are often easy to describe. In code, they cannot be computed. Lazy evaluation only evaluates values when are consumed.

finite sequences
---
(range 1 10) 	=> (1 2 3 4 5 6 7 8 9) % upper bound is non-inclusive
(range 1 10 2)	=> (1 3 5 7 9) % specify increment
(range 5)		=> (0 1 2 3 4) % 0 is default lower bound

infinite sequences
---
(take 3 (repeat 5)) 					=> (5 5 5)
(take 5 (cycle [:eat :drink :sleep])) 	=> (:eat :drink :sleep :eat :drink)
(take 5 (drop 2 (cycle [:eat :drink :sleep]))) => (:sleep :eat :drink :sleep :eat) % skip

(= 
	(take 5 (drop 2 (cycle [:eat :drink :sleep]))) 
	(->> [:eat :drink :sleep] (cycle) (drop 2) (take 5))
)										=> true

(interpose :and [:shit :shave :shower]) => (:shit :and :shave :and :shower))
(take 10 (interleave (cycle (range 1 3)) (cycle (range 3 6)))) =>	(1 3 2 4 1 5 2 3 1 4)
(take 5 (iterate inc 1)) => (1 2 3 4 5)

(nth (iterate (fn [x] (* x x))))

defrecord and defprotocol
===
allows interop with Java types and interfaces - steers clear of inheritance