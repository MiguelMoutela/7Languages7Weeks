
pickMe= rand(10)
puts "I've chosen a number, can you guess ?"

while true 
  guess= gets.chomp
  if guess.to_i > pickMe
    puts "Too High! Try again"
  elsif guess.to_i < pickMe
    puts "Too Low! Try again"
  else 
    puts "Correct!"
    break
  end
end