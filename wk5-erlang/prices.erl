-module(prices).
-export([total/1]).

total(Lines) ->
  [{ Item, Quantity * Price } || {Item, Quantity, Price} <- Lines].
