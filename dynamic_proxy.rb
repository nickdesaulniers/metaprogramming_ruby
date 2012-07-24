# Dynamic Proxy
# Forward to another object any messages that don't match a method.
class DynamicProxy
  def initialize target
    @target = target
  end

  def method_missing name, *args, &block
    "result: #{@target.send name, *args, &block}"
  end
end

obj = DynamicProxy.new 'a string'
p obj.reverse # => "result: gnirts a"
# Notice how we're calling reverse on a obj of type Dynamic Proxy but sending
# the method to an obj of type String