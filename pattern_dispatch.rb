# Pattern Dispatch
# Select which methods to call based on thier names.
$x = 0

class C
  def my_first_method
    $x += 1
  end

  def my_second_method
    $x += 2
  end

  def third_method
    $x -= 1000
  end
end

obj = C.new
obj.methods.each do |method|
  obj.public_send(method) if method.to_s =~ /^my_/
end
p $x # => 3