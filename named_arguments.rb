# Named Arguments
# Collect method arguments into a hash to identify them by name.
def my_method args
  args[:arg2]
end

p my_method arg3: 'A', arg1: 'B', arg2: 'C' # => "C"