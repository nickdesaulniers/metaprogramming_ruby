# Monkey Patch / Duck Punch
# Change the features of an existing class.
p 'abc'.reverse # => "cba"

class String
  def reverse
    'override'
  end
end

p 'abc'.reverse # => "override"