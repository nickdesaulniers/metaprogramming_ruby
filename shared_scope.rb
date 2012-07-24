# Shared Scope
# Share variables among multiple contexts in the same Flat Scope.
lambda {
  shared = 10

  self.class.class_eval do
    define_method :counter do
      shared
    end

    define_method :down do
      shared -= 1
    end
  end
}.call

p counter # => 10
3.times { down }
p counter # => 7