puts 2 + 2

puts 'Hello, world!'.size

begin
    puts 'Hello, world!'
    puts 'Hello, Ruby!'
end

my_begin = 2 + 2
puts my_begin

CONST = 12
puts CONST # 12

puts 'Hello world!'.object_id # 60
puts 3.between? 0, 10 # true
puts 3.between? 10, 20 # false

obj = Object.new
puts obj.object_id # 80

class Hello
end
h = Hello.new
puts h.class # Hello

def greeting
    puts 'Hello, world!'
end
greeting

class HelloWorldClass
    def greeting
        puts 'Hello, world class!'
    end
end
h = HelloWorldClass.new
h.greeting # Hello, world class!

puts 5 + 2 # 7
puts 5 - 2 # 3
puts 5 * 2 # 10
puts 5 / 2 # 2

# same to
puts 5 + 2
puts 5.+ 2
puts 5.+(2)

print 'hello', "world\n"

puts '3'.inspect # "3"
puts 3.inspect # 3

p '3' # "3"
p 3 # 3

pp '3' # "3" # pretty-printer
pp 3 # 3

puts 2.class # Integer
puts 'hello'.class # String

puts 3.respond_to? 'between?' # true, integer has method 'between?'
puts 3.respond_to? 'puts' # false
puts 3.methods
