# Code Processor
# Process Strings of Code from an external source.
commands = [
  '1 + 1',
  '3 * 2',
  'Math.log10 100'
]

commands.each do |command|
  puts "#{command.chomp} ==> #{eval command}"
end

# => 1 + 1 ==> 2
# => 3 * 2 ==> 6
# => Math.log10 100 ==> 2.0