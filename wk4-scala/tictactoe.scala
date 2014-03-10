def printList[T](list: List[T]) {
  list match {
    case head :: tail =>
      println(head)
      printList(tail)
    case Nil =>
  }
}

val board= List(List(),List(),List())

def winner(l: List[String]): Boolean = {
  val x= l(0);
  return x != "_" && l.forall( i => i == x )
}

def allCombinations(board:List[List[String]]) : List[List[String]] = {
  var result= List[List[String]]()
  result= result ++ board; // Rows

  // Columns
  result = result :+ board.map[String,List[String]]( x=> x(0) )
  result = result :+ board.map[String,List[String]]( x=> x(1) )
  result = result :+ board.map[String,List[String]]( x=> x(2) )

  // Diagonals
  result = result :+ List( board(0)(0), board(1)(1), board(2)(2) )
  result = result :+ List( board(2)(0), board(1)(1), board(0)(2) )

  return result
}

def winner( board:List[List[String]] ): String = {
  val winners= allCombinations(board) filter winner
  if( winners.isEmpty ) return "_"
  else return winners.head(0);
}

def tie( board:List[List[String]] ): Boolean = {
  return winner( board ) =="_" && board.flatten.forall( x => x != "_")
}

var winBoard1=  List(List("X","X","X"),List("O","O","_"),List("_","_","_"))
assert( winner( winBoard1 ) == "X" )

var winBoard2=  List(List("X","O",""),List("X","O","_"),List("X","_","_"))
assert( winner( winBoard2 ) == "X" )

var winBoard3=  List(List("X","_","O"),List("X","O","_"),List("O","_","X"))
assert( winner( winBoard3 ) == "O" )

var tieBoard=  List(List("O","X","O"),List("O","X","X"),List("X","O","X"))
assert( tie( tieBoard ) )
