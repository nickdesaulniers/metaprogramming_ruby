# Dynamic Dispatch
# Decide which method to call at runtime.
method_to_call = :reverse
obj = 'abc'
p obj.public_send method_to_call # => "cba"