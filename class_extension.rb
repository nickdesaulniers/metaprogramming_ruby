# Class Extension
# Define class methods by mixing a module into a class' eigenclass. A special
# case of Object Extension.
class C; end

module M
  def my_method
    'a class method'
  end
end

class << C
  include M
end

p C.my_method # => "a class method"