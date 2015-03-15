-module(yet_again).
-export([fact/1]).
-export([fib/1]).

fact(0) -> 1;
fact(AnythingElse) -> AnythingElse * fact(AnythingElse - 1).

fib(0) -> 1;
fib(1) -> 1;
fib(AnythingElse) -> fib(AnythingElse - 1) + fib(AnythingElse - 2).