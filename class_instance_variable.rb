# Class Instance Variable
# Store class level state in an instance variable of the Class object.
class C
  @civ = 'some value'
  
  def self.class_attribute
    @civ
  end
end

p C.class_attribute # => "some value"