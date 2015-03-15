About
===
Acronym for Ericcson Language, sharing the name of Danish mathematician Agner Karup Erlang, creator of the field of telephone network analysis - the study of local, exchange and trunk telephone usage that led to the eponymous Erlang forumla, the foundation of present day telecommunication network studies.

Spawned from Prolog, Erlang was developed in 1986, by Dr Joe Armstrong @joeerl. It was built for near real-time, fault-tolerant distributed applications for the telecommunications industry, where systems were required to have 100% up-time. Has modern uses in CouchDB, Facebook chat and RabbitMQ.

Functional language, with scalable concurrency and reliability features built-in.

Although functional, it is described as truly object-oriented in the way it encapsulates behaviour, and passes messages (pattern matching as opposed to lots of IF statements).

Virtual Machine is called BEAM - and is highly robust for enterprise deployment

Dynamically typed - don't have to specify types

Concurrency
===

Processes
---
Processes have their own resources.

Threads
---
Processes have many threads. Threads have own execution path, but share resources. Usually threads are lighter weight.

Erlang
---

Unlike many other languages, Erlang does not use threads. Although lightweight, threads using shared resources can lead to complex and buggy systems - locking resources and creating bottlenecks. Instead, Erlang makes its processes as lightweight as possible.

Erlang simplifies the creation, management and communication within applications of processes.

By making distributed message passing a basic language-level construct, Erlang does away the need for locking and ergo improving concurrency. Uses actors to read inbound messages. Actors represent a lightweight process.

Let it Crash - the mantra of Erlang
===

Erlang's easy management and monitoring of the lifecycle of processes allows related processes to be killed, and new ones spun up in the event of a failure.

Ability to "hot-swap" components without stopping the application, leading to applications that run for years without any downtime.


Syntax and Data Types
===
statements end with a period .
% comments
2 + 2. => 4
2 + 2.0. => 4.0 // type coercion
"string" => "string"
4 + "string" => exception // no type coercion between strings and ints
[1,2,3]. => [1,2,3]
[72, 97, 32, 72, 97, 32, 72, 97, 32] => "Ha Ha Ha" // strings are really just lists. if the values equate to a ascii value, it will convert

MyVar = 4.
MyVar. => 4 // variables must start with capital letter

Atoms, Lists and Tuples
===

Atoms
---
In functional languages, symbols are more important. 
They are most primitive data element. 
Arbitrary names used to symbolise a real-world object.
In Erlang, they are called Atoms.
They begin with a lowercase letter:

red. => red
Pill = blue.
Pill => blue

Lists
---
[1,2,3] => [1,2,3]
[1,2,"three"]// heterogeneous

Tuples
---
{1,2}
{one, two}
{name, "Jonny Bravo"} // often used like a hash map

Pattern Matching
===

Person = {person, {name, "Vince"}, {job, "Dev"}}. // assign tuple to variable Person
{person, {name, Name}, {job, Job}} = Person. // pattern match variables Name and Job to our Person
Name. => "Vince"
Job. => "Dev"

List pattern matching
---

[Head|Tail] = [1,2,3].
Head. => 1
Tail. => [2,3]

[First, Second|Rest] = [1,2,3].
First. => 1
Second. => 2
Rest. => [3]
[Head|Tail] = []. => exception error: no match of right hand side value []
one = 1. => exception error: no match of right hand side value []
= is not assignment, its pattern matching

Bit Matching
---
???
http://www.erlang.org/doc/programming_examples/bit_syntax.html

Compilation
===

---
modulename.erl
---

-module(modulename).
-export([functionname/numberOfArguments]).

functionname(ArgumentName) -> //function body .

---
in repl
---
c(modulename).
modulename:functionname(argument)

Functions
===

optimised for tail recursion