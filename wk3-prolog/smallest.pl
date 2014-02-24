smaller(X, Y, Result) :-
  (X < Y), Result is X.

smaller(X, Y, Result) :-
  (Y < X), Result is Y.

smallest([X], X).

smallest([Head|Tail], X) :-
  smallest(Tail, Y),
  smaller(Head, Y, X ).
  
/* I hate prolog so much :( */
