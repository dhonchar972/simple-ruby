# require_relative 'hello_world'

# hello = HelloWorld.new
# p hello.work

class String
    def hello
        "Hello, #{self}!"
    end
end
puts 'world'.hello # Hello, world!
puts 'Ruby'.hello # Hello, Ruby!

price = 500
puts "Ticket price: #{price} $" # Ticket price: 500 $
class Integer
    def to_s
        "Don't do it again!!!"
    end
end
puts "Ticket price: #{price} $" # Ticket price: Don't do it again!!! $
# This is called class opening technique.
# Widely used in Ruby on Rails, completely reworks the original behavior of classes and methods, 
# almost turning the framework into another language.

class HelloWorld
    puts 'Begin of class HelloWorld'
    puts 'End of class HelloWorld'
end
hello = HelloWorld.new
p hello
# Begin of class HelloWorld
# End of class HelloWorld
# #<HelloWorld:0x00007f26b5c5b420>