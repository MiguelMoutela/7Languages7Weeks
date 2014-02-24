sorty(ListToSort,Solution) :-
  permutation(ListToSort, Solution),
  isSorted(Solution).

isSorted([]).
isSorted([X]).
isSorted([X,Y |Tail]) :-
  X =< Y,
  isSorted([Y | Tail]).
