# Mimic Method
# Disguise a method as another language construct.
def BaseClass name
  name == "string" ? String : Object
end

class C < BaseClass 'string'  # a method that looks like a class
  attr_accessor :an_attribute # a method that looks like a keyword (no parens)
end

obj = C.new
obj.an_attribute = 1 # a method that looks like an attribute