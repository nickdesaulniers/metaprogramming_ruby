# Singleton Method
# Define a method on a single object.
obj = 'abc'

class << obj
  def my_singleton_method
    'x'
  end
end

p obj.singleton_methods   # => [:my_singleton_method]
p obj.my_singleton_method # => "x"