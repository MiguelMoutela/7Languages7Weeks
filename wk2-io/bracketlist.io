
curlyBrackets := method(
  l := list()
  call message arguments foreach (
    arg,
  l append(arg) )
  return (l)
)

fruit := {
  "apples",
  "pears",
  "oranges",
  "bananas"
}
fruit size println
fruit at(0) println
fruit at(3) println
