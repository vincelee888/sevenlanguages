-module(counter).
-export([count_to/1]).

output_count(Start, Max) ->
	io:fwrite(integer_to_list(Start) ++ "~n"),
	if 
		(Start < Max) -> output_count(Start + 1, Max);
		true -> nil
	end.

count_to(Max) -> output_count(1, Max).