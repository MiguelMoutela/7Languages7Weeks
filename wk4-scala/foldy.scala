val strings= List[String]("a","abc","","abcd");
assert( strings.foldLeft( 0)( (acc, s) => acc + s.length ) == 8 );
