# Around Alias
# Call the previous, aliased version of a method from a redefined method.
class String
  alias :old_reverse :reverse
  def reverse
    "x#{old_reverse}x"
  end
end
p "abc".reverse # => "xcbax"