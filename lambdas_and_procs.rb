def polite_hello
  lambda { return "Hello!" }.call
  return "How are you?"
end

def hello
  Proc.new { return "Hello!" }.call
  return "How are you?"
end

puts polite_hello
puts ""
puts hello

#polite_hello returns "How are you?"
#hello returns "Hello!"

p = Proc.new { |name| "Hello #{name}!"}
puts p.call("Rebecca", "Appleyard")

l = lambda { |name| "Hello #{name}!" }
puts l.call("Rebecca", "Appleyard")

#the proc outputs "Hello Rebecca!" - ignores second argument
#the lambda raises an ArgumentError
