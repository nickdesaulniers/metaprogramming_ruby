# Ghost Method
# Respond to a message that doesn't have an associated method.
class C
  def method_missing name, *args, &block
    name.to_s.reverse
  end
end

obj = C.new
p obj.non_existant_method # => "dohtem_tnatsixe_non"