# Blank Slate
# Remove methods from an object to turn them into Ghost Methods
class C
  def method_missing name, *args
    'a Ghost Method'
  end
end

obj = C.new
p obj.to_s # => "#<C:0x007fa7a9051c90>"

class C
  methods_to_save_re = /^method_missing$|^respond_to\?$|^__|object_id/
  instance_methods.each do |m|
    undef_method m unless m.to_s =~ methods_to_save_re
  end
end

p obj.to_s # => "a Ghost Method"