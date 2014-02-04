n= [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
buffer= []

# scan, and buffer
puts "Home made: "
n.each do |x|
  buffer << x
  if buffer.size == 4
    p buffer
    buffer= []
  end
end

# slice
puts "Slice: "
n.each_slice(4) {|x| p x}