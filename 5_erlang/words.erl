-module(words).
-export([count/1]).

count_spaces([]) -> 0;
count_spaces([Head|Tail]) -> is_space(Head) + count_spaces(Tail).

is_space(($ )) -> 1;
is_space(_) -> 0.

count([]) -> 0;
count([Head|Tail]) -> 1 + count_spaces([Head|Tail]).