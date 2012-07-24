# Class Extension Mixin
# Enable a module to extend its includer through a Hook Method.
module M
  module ClassMethods
    def my_method
      'a class method'
    end
  end

  module InstanceMethods
    def my_method
      'an instance method'
    end
  end

  def self.included base
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end
end

class C
  include M
end

p C.my_method # => "a class method"
p C.new.my_method # => "an instance method"