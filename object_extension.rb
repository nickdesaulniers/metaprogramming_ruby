# Object Extension
# Define Singleton Methods by mixing a module into an object's eigenclass.
obj = Object.new

module M
  def my_method
    'a singleton method'
  end
end

class << obj
  include M
end

p obj.my_method # => "a singleton method"