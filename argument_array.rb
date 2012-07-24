# Argument Array
# Collapase a set of arguments into an array.
def my_method *args
  args.map { |arg| arg.reverse }
end
p my_method 'abc', 'xyz', '123' # => ["cba", "zyx", "321"]