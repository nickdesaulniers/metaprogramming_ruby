# Self Yield
# Pass self to the current block.
class Person
  attr_accessor :name, :surname

  def initialize
    yield self if block_given?
  end
end

joe = Person.new do |p|
  p.name = 'Joe'
  p.surname = 'Smith'
end

p joe # => #<Person:0x007fa4710ad0f8 @name="Joe", @surname="Smith">