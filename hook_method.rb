# Hook Method
# Override a method to intercept object model events.
$INHERITORS = []
class C
  def self.inherited subclass
    $INHERITORS << subclass
  end
end

class D < C; end
class E < C; end
class F < C; end

p $INHERITORS # => [D, E, F]