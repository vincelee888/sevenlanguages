-module(tictactoe).
-export([winner/1]).

winner(Board) ->
	case Board of
		[A, A, A, _, _, _, _, _, _] -> A;
		[_, _, _, A, A, A, _, _, _] -> A;
		[_, _, _, _, _, _, A, A, A] -> A;
		[_, A, _, _, A, _, _, A, _] -> A;
		[_, _, A, _, _, A, _, _, A] -> A;
		[A, _, _, _, A, _, _, _, A] -> A;
		[_, _,A,  _, A, _, A, _, _] -> A;
		[_] -> no_winner
	end.