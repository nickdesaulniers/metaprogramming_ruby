# Scope Gate
# Isolate a scope with the class, module, or def keyword.
a = 1
p defined? a # => "local-variable"

module MyModule
  b = 1
  p defined? a # => nil
  p defined? b # => "local-variable"
end

p defined? a # => "local-variable"
p defined? b # => nil