# Clean Room
# Use an object as an environment in which to evaluate a block.
class CleanRoom
  def a_useful_method x
    x * 2
  end
end

p CleanRoom.new.instance_eval { a_useful_method 3 } # => 6