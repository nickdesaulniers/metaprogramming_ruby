# Sandbox
# Execute untrusted code in a safe environment.
def sandbox &code
  proc {
    $SAFE = 2
    yield
  }.call
end

begin
  sandbox { File.delete 'entire_filesystem' }
rescue Exception => e
  p e # => #<SecurityError: Insecure operation `delete' at level 2>
end
