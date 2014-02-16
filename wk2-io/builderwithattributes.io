OperatorTable addAssignOperator(":", "colon")

Builder := Object clone

// Nesting level
Builder depth ::= 0


Builder colon := method(
   key := call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\"")
   value := call evalArgAt(1)
   " #{key}=\"#{value}\"" interpolate
 )

Builder curlyBrackets := method(
  hashAsList := call message arguments map(arg, self doMessage(arg))
  return hashAsList join("")
 )
 
Builder forward := method (
 spacing := ("  " repeated( self depth() ));
 args := call message arguments;

 // Opening Tag
  attributes := ""
  if( args size > 0 and args at(0) name == "curlyBrackets",
    attributes = doMessage(args removeFirst)
)

 writeln(spacing, "<", call message name, attributes, ">")

 self setDepth( self depth() + 1 );

 // Recurse yo!
 args foreach (
   arg,
   content := self doMessage(arg);
   if( content type == "Sequence", writeln(spacing, "  ", content)))

 // Closing Tag
 writeln(spacing,"</", call message name, ">")
  self setDepth( self depth() - 1 );

)

// Thank you , thank you, thank you: http://brikis98.blogspot.co.uk/2012/02/seven-languages-in-seven-weeks-io-day-3.html
// gargrgrgrgr, the AddAssignOperator at the top is ignored/too late when parsing the test 'definition'!!!!!
// lost  a *LOT* of time to that problem.
doFile("BuilderWithAttributesTest.io")
