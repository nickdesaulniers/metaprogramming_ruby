# Symbol to Proc
# Convert a symbol to a block that calls a single method.
p [1, 2, 3, 4].map &:even? # => [false, true, false, true]