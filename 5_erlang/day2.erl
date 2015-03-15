-module(day2).
-export([printList/1]).
-export([mapExample/0]).
-export([filterExample/0]).
-export([foldlExample/0]).
-export([listCompExample/0]).
-export([listCompExample2/0]).

printList(List) ->
	Print = fun(Value) -> io:format("~p~n", [Value]) end,
	lists:foreach(Print, List).

mapExample() ->
	Double = fun(Value) -> Value * 2 end,
	OneToFive = [1,2,3,4,5],
	Doubled = lists:map(Double, OneToFive),
	printList(Doubled).

filterExample() ->
	OneToFive = [1,2,3,4,5],
	Small = fun(Value) -> Value < 3 end,
	SmallOnes = lists:filter(Small, OneToFive),
	printList(SmallOnes).

foldlExample() ->
	OneToFive = [1,2,3,4,5],
	Add = fun(X, Y) -> X + Y end,
	lists:foldl(Add, 0, OneToFive).

listCompExample() ->
	Double = fun(Value) -> Value * 2 end,
	OneToFive = [1,2,3,4,5],
	[Double(Value) || Value <- OneToFive].

listCompExample2() ->
	TaxRate = 0.20,
	Cart = [{pencil, 4, 0.25}, {pen, 2, 0.5}, {notebook, 1, 1.50}],
	WithVat = [{Product, Qty, Price, Price * Qty * TaxRate} || {Product, Qty, Price} <- Cart],
	WithVat.