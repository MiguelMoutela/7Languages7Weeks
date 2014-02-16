Builder := Object clone

// Nesting level
Builder depth ::= 0

Builder forward := method (
 spacing := ("  " repeated( self depth() ));

 // Opening Tag
 writeln(spacing, "<", call message name, ">")

 self setDepth( self depth() + 1 );

 // Recurse yo!
 call message arguments foreach (
   arg,
   content := self doMessage(arg);
   if( content type == "Sequence", writeln(spacing, "  ", content)))

 // Closing Tag
 writeln(spacing,"</", call message name, ">")
  self setDepth( self depth() - 1 );

)

Builder ul(
  li("Io"),
  li("Lua"),
  li("JavaScript"),
  p(
    span("xxx")
  ),
  div(
    div(
      div("yyyy")
    )
  )
)
