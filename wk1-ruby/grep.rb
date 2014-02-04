lineNumber=0
fileName= ARGV[0]
regex= Regexp.new ARGV[1]
File.open(ARGV[0]).each do |line|
  if( line =~ regex )
    puts "#{lineNumber += 1} #{line}"
  end
end