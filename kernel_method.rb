# Kernel Method
# Define a method in module Kernel to make the method available to all objects.
module Kernel
  def a_method
    'a kernel method'
  end
end

p a_method # => "a kernel method"