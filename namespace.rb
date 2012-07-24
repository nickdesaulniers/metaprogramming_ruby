# Namespace
# Define constants within a module to avoid name clashes.
module Namespace
  class Array
    def to_s
      'monkey patch within a namespace (module)'
    end
  end
end

p Array.new # => []
p Namespace::Array.new # => monkey patch within a namespace (module)