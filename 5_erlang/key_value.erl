-module(key_value).
-export([get_values/1]).

get_values(KeyValuePairs) ->
	lists:map(fun({_Key,Value}) -> Value end, KeyValuePairs).