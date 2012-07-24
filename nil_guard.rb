# Nil Guard
# Override a reference to nil with an 'or.'
x = nil
y = x || 'a value'

p y # => "a value"