/* Io - Day 1
===

Intro 
--- */

"my string" // type = sequence
1 // type = Number

"Hello vince" print // send a receiver a message
//---			  ---
//receiver	  message

Vehicle := Object clone // Prototypical everything is an object that you clone
Vehicle description := "Something to take you somewhere" // assign a slot using :=
Vehicle description = "A different description" // assign a pre-existing slot with =
// Vehicle size = "Large" // error: size is not defined
Vehicle description // "A different description" retrieve value of slot
// Vehicle wang // error: Vehicle does not respond to wang

Vehicle slotNames // returns list of all slots on an object

Vehicle type // get type of object. Type is an object, not a class

/* Inheritance
--- */

 Car := Vehicle clone // car is a clone of Vehicle
 Car slotNames // returns list(type)
 Car description // We haven't defined a slot called description, so it inherits it from Vehicle
 ferrari := Car clone
 ferrari slotNames // returns list() - convention decrees Types are uppercase
 ferrari type // returns Car

ferrari proto // return Car and its slots; ferrari's prototype is Car, Car's prototype is Vehicle, Vehicle's prototype is Object

/* Methods
--- */

method("Hello" println) // methods are object of with Type Block

Car drive := method("Vrooom" print) // assign Car a slot drive, that prints out Vrooom

ferrari getSlot("drive") // returns method("Vrooom" print)

Lobby // list all Objects defined

/*
Every *thing* is an Object
Every *interaction* with an Object is a message
Clone Objects to instantiate new ones
Objects are aware of their prototypes (parent)
Objects have slots, assigned using :=, and mutated with =
Slots contain Objects
Methods are Objects
A message returns the value in a slot or invokes the method in a slot
If an object can't respond to a message, it sends that message to its prototype

Lists
--- */

list("a", "b", "c") // an ordered collection of objects, don't have to be homogenous
// have convenience methods for maths and to treat it as other data types: average, sum, append(123), pop

/* Maps - like a hash
--- */

elvis := Map clone
elvis atPut("home", "Graceland")
elvis at("home") // "Graceland"
elvis asObject // home = "Graceland"
elvis aList // list(list(home, Graceland))
elvis keys // list("home")
elvis size // 2

/* Control Structures
--- */

4 < 5 // true
4 <= 3 // false
true and false // false
true or false // true

true clone // returns true
false clone // returns false
nil clone // returns nil; they are all singletons

Highlander := Object clone
Highlander clone := Highlander // create own singletons; can override slots on anything, even Object clone : "borked"

fred := Highlander
mike := Highlander
fred == mike // true
one := Object clone
two := Object clone 
one == two // false

people select(age > 20) map (address) println // chaining

/*
PROS
---
highly flexible
terse
coroutines
async sockets
SIMD support

CONS
---
slow