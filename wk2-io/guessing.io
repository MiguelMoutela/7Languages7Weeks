target := 1+ (100 * Random value) floor 
target println
guesses := 1
while( guesses < 10,
  "Take a guess? " println
  guess := ( File standardInput readLine ) asNumber
  if( (guess == target), 
    "Correct!" println; return,"Wrong :(" println)
  guesses := guesses + 1
)
"Bad times, no guessy :/" println

