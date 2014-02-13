# loopy
fib := method(n,
  i := 0; a := 0; b := 1
  while(i < n,
    t := a
    a := b
    b := t + b
    i := i + 1
  )
  a
)

# recursive
fibr := method(n,
  if( n < 2 ) then (x := n) else (x :=  fibr(n-1) + fibr(n-2) )
  x
)

fib(1) println
fib(4) println
fib(10) println

fibr(1) println
fibr(4) println
fibr(10) println

(5 / 0) println  

Number setSlot(
  "_divsy",
  Number getSlot( "/" )
);

Number / := method(x, 
  if( (x == 0), 
    return(0); 
  );
  return (
    self _divsy(x);
  );
)

(5 / 0) println
Number / := Number getSlot("_divsy")

List deepSum := method(
  self flatten sum
)
  
2DArray := list(
  list( 1, 2, 3 ),
  list( 4, 5, 6 ),
  list( 7, 8, 9 )
);

2DArray deepSum println

List myAverage := method(
  // Not cheating with using 'average'
  if( (self size == 0 ),
    return(0);
  );

  acc := 0
  for(i,0, self size - 1,
    x := at(i);
    if( (x type != "Number"), Exception raise("List contains a non-numeric value"))
    acc := acc + self at(i);
  )
  return( acc / self size)
);

list(1,2,3) myAverage println
list() myAverage println

e := try(
  list(1,"a",4) myAverage
) 
e catch(Exception,
    writeln(e coroutine backTraceString)
)

List2D := Object clone
List2D dim := method(x, y,
  self _val := list()
  
  for(i,0, y-1, 
    self _val append( 
      a := list()
      self _val append(a)
      for(j,0,x-1, a append(nil) ) 
    )
  )
)

List2D get := method(x, y, 
  self _val at(y) at(x)
)

List2D set := method(x, y, value,
  self _val at(y) atPut(x, value)
)

list2d :=  List2D clone
list2d dim(4,5)
list2d set(1,1, "Alv")
list2d set(3,4, "XXX")
list2d get(1,1) println
list2d get(3,4) println

/*List2D transpose := method(
  r := List2D clone

(self _val size) println
  
  r dim( self _val size, self _val at(0) size )
  
  return (r)
)

(list2d transpose) get(4,3) println # Should equal XXX
*/
  
f := File with("array.out")
f remove
f openForUpdating
f write( list2d serialized )
f close

"" println

list2db := doFile("array.out")
( list2db get(3,4) == list2d get(3,4) ) println
( list2db get(1,1) == list2d get(1,1) ) println
