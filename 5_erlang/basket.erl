-module(basket).
-export([line_total/1]).

line_total(Basket) ->
	[{Product, Quantity * Price} || {Product, Quantity, Price} <- Basket].