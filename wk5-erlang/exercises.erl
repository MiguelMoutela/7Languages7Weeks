-module(exercises).
-export([recursive_count_to_10/0]).
-export([words_in_string/1]).

recursive_count_to(10,10) -> io:format("10~n");
recursive_count_to(N, X) ->
  io:format("~w~n",[N]),
  recursive_count_to(N+1, X).

recursive_count_to_10() ->
 recursive_count_to(1, 10).

words_in_string([], Acc) -> Acc;
words_in_string([_], Acc) -> Acc+1;
words_in_string([_|Tail], Acc) ->
 words_in_string(Tail, Acc +1).

words_in_string(String) ->
  words_in_string(string:tokens(String," "), 0).
