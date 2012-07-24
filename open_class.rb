# Open Class
# Add to an existing class.
class String
  def palindrome?
    self == self.reverse
  end
end

p "racecar".palindrome? # => true
p "nick".palindrome? # => false