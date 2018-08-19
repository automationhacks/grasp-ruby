class Greeter
    def initialize(name = "Gaurav")
        @name = name
    end

    def say_hi
        puts "Hello #{@name}"
    end
end

greeter = Greeter.new("Foo")

# In ruby we cannot access instance var directly from the object 
# greeter.@name
# syntax error, unexpected tIVAR, expecting '('

greeter.say_hi

# Lets see how we can inspect methods in ruby

all_methods = Greeter.instance_methods
puts all_methods

# If we want to only see method which are defined in the class
# We can use below
no_ancestors = Greeter.instance_methods(false)
puts no_ancestors

# Lets say we want to find what methods our greeter object would respond to:
puts greeter.respond_to?("say_hi") # works

puts greeter.respond_to?("name") # does not work

puts greeter.respond_to?("to_s") # works to_s is the convert to string method 

# In ruby, we can open up a class again and modify it,
# The changes will be present for any new objects we create along with existing
# objects

class Greeter
    attr_accessor :bigger_name
end

another_greeter = Greeter.new("Dracula")
puts another_greeter

puts another_greeter.respond_to?("bigger_name")

