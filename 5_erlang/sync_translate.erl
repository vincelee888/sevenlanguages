-module(sync_translate).
-export([loop/0]).
-export([translate/2]).


loop() ->
	receive
		{From, "casa"} ->
			From ! "house",
			loop();
		{From, "blanca"} ->
			From ! "white",
			loop();
		{From, _} ->
			From ! "I don't understand",
			loop()
end.

translate(To, Word) ->
	To ! {self(), Word},
	receive
		Translation -> Translation
	end.