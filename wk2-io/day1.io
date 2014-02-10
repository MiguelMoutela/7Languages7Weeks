Animal := Object clone
Animal noise := method (nil)

Dog := Animal clone
Dog noise := method("bark!" println)
  
Cat := Animal clone
Cat noise := method("Miaow!" println)


ambrosia := Cat clone
fido := Dog clone

Dog noise
Cat noise
ambrosia noise
fido noise