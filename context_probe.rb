# Context Probe
# Execute a block to access information in an object's context.
class C
  def initialize
    @x = 'a private instance variable'
  end
end

obj = C.new
p obj.instance_eval { @x } # => "a private instance variable"