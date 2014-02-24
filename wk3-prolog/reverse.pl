reverse([], List).
reverse([X],[X]).  /* Un-neccessary?? */
reverse([H|T1], [Head|T2]) :-
  reverse(T2, T1).
