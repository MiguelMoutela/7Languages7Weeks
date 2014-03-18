-module(keywords).
-export([find_it/2]).


% Yeah girls, here I go showing off with a mix of both list comprehension and case stuff..
find_it(List, Keyword) ->
  L=[Y || {X,Y}<-List, X == Keyword],
  case L of
    [R] -> R;
    [] -> got_nothing
  end.
