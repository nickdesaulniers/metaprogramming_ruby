# Dynamic Method
# Decide how to define a method at runtime.
class C; end
C.class_eval do
  define_method :my_method do
    'a dynamic method'
  end
end

obj = C.new
p obj.my_method # => "a dynamic method"