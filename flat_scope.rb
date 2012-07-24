# Flat Scope
# Use a closure to share a variable between two scopes.
class C
  def an_attribute
    @attr
  end
end

obj = C.new
a_variable = 100

# flat scope:
obj.instance_eval do
  @attr = a_variable
end

p obj.an_attribute # => 100