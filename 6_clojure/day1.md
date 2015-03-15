History
===

Yet another Lisp dialect, built on the JVM

Lisp
---

acronym for LISt Processing - language of lists
function call is a list of arguments, where first is the function, and the rest are parameters - prefix notation
uses its own data structures to express code "data as code"
this flexibility is ideal for meta-programming, allowing you to follow OO, prototypical, or functional paradigms

Clojure
---
functional
dynamically typed
strongly typed
type coercion
types are unified with underlying java type - discover with class function

Syntax
===

Numbers
---

(+ 1 2) 				=> 3
(/ 1 3)					=> 1/3
(class(/ 1 3)) 			=> clojure.lang.ratio - basic data type ratio, delays computation, without losing precision

(+ 2 2 2 2)				=> 8
(/ 8 2 2)				=> 2
(< 1 2 3)				=> true, each argument is less than the next
(< 1 3 2)				=> false 

(+ 3.0 5)				=> 8.0

strings and chars
---

(println "yoda\nluke\ndarth") => yoda
								 luke
								 darth
(str 1)					=> "1"
(str "one: " 1)			=> "one: 1"
(str \f \o \r \c \e) 	=> "force"
(= "a" \a)				=> false, characters are not strings of length 1
(= (str \a) "a")		=> true

booleans and expressions
---
booleans are results of expressions

(= 1 1.0)		=> true
(= 1 2)			=> false
(< 1 2)			=> true

(if (= 1 1) "Truthy" "Falsey") 	=> "Truthy"

lists and vectors
===
ordered collections
lists are optimised for ordered traversal
vectors are optimised for random access
conventionally, lists are used for code, vectors for data
(= (list 1 2 3) '(1 2 3))	=> true
[:hutt :wookie :ewok]

(first '(1 2 3))			=> 1
(last '(1 2 3))				=> 3
(rest '(1 2 3))				=> (2 3)
(cons \a '(1 2 3))			=> (\a 1 2 3)
(nth '(1 2 3) 2)			=> 3
(count '(1 2 3))			=> 3
(sort '(3 2 1))				=> (1 2 3)

sets
===
unordered collection

#{:xwing :ywing 'tiefighter'}
(sorted-set  2 4 1 3) 	=> #{ 1 2 3 4}

maps
===
key-value pairs
(def mentors {:darth "obi-wan", :luke "yoda"})
(mentors :luke) => "yoda"
(:luke mentors) => "yoda"

functions
===
(defn force-it "obi wan quote" [] (str "use the force", "luke"))

defn			define a function
force-it		function name
"obi wan quote"	function documentation - (doc force-it)
[]				function arguments
(str "...")		function body

bindings
===

(def line [[0 0] [10 20]])
(defn line-end [ln (last ln)])
(line-end line)						=> [10 20]
defn line-end[[_ second]] second)	=> [10 20] // destructuring (pattern matching): taking a data structure apart and grabbing just the pieces required

nesting
---
(def tictactoe [[:x :o :x] [:o :x :o] [:o :x :o]])
(defn centre [[_ [_ c _]_]] c)
(defn centre2 [[_ [_ c ]]] c) // don't have to list unrequired elements after target
(centre tictactoe)					=> :x
(= (centre tictactoe) (centre2 tictactoe)) => true
(defn centre3 [board]
	(let [[_ [_ c]] board] c))	// bind board to pattern, then return c

anonymous functions
===

(fn [parameters] body)
(map (fn [w] (* 2 (count w))) '("Lando", "Han", "Lea")) 	=> ( 10 6 6) // counts letters in each element and doubles
(map #(* 2 (count %)) '("Lando", "Han", "Lea")) // short form: # defines anonymous function, % is bound to each item of the sequence. # is called a reader macro.

