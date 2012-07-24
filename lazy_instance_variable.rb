# Lazy Instance Variable
# Wait until the first access to initialize an instance variable.
class C
  def attribute
    @attribute = @attribute || 'some value'
  end
end

obj = C.new
p obj.attribute # => "some value"
# Notice how @attribute wasn't initialized in C's initialize method, but when
# accessed.