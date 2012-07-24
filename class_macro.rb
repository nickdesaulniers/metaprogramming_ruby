# Class Macro
# Use a class method in a class definition.
class C; end

class << C
  def my_macro arg
    p "my_macro (#{arg}) called"
  end
end

class C
  my_macro :x
end
# => "my_macro (x) called"