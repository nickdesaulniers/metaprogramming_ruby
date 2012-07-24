# Deferred Evaluation
# Store a piece of code and its context in a proc or lambda for evaluation
# later.
class C
  def store &block
    @code_capsule = block
  end

  def execute
    @code_capsule.call
  end
end

obj = C.new
obj.store { $X = 1 }
$X = 0
obj.execute
p $X # => 1