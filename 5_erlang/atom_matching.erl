-module(atom_matching).
-export([output/1]).

output(Value) ->
	case Value of
		success -> io:fwrite("Success~n");
		{error, Message} -> io:fwrite("error: " ++ Message ++ "~n");
		_ -> io:fwrite("parp")
	end.