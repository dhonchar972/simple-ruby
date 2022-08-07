# variables types:
    # local - local-variable
    # $global - global-variable 
    # @object - object-variable
    # @@klass - class-variable (why does it start with k???!!!)
def say_bye
    x = 'x from say_bye'
    puts x
end
def output
    x = 'x from start'
    puts x
    say_bye
    puts x
end
def say_hello
    x = 'x from say_hello'
    return x
end
def start
    x = "\nx from start"
    puts x
    x = say_hello
    puts x
end
x = "HI!\n\n" # why first \n not work????
puts x
output
start

reeting = 'Hello, world!'
number = 100_000
p local_variables # [:x, :greeting, :number]

def say_global
    $y = '$y from say_global'
end
def global
    $y = '$y from global'
    puts $y
    say_global
    puts $y
end
$y = 'global HI!!!'
puts $y
global
puts $y
# global HI!!!
# $y from global
# $y from say_global
# $y from say_global


# NOT WORK!!!
# aboba
# def aboba
#     puts 'aboba'
# end

# some hacks to call function before difinition
# BEGIN {
#     put at the beginning of the file
# }
# END {
#     put at the end of the file
# }

# puts $LOAD_PATH 

# $LOAD_PATH << '.' # add element to array!!!!!

puts $PROGRAM_NAME

# @ - class field(in ruby it calls "global variable inside the class"),
# @@ - static variable(in ruby it calls "class variable"!)
class Ticket
    # setter
    def set_date(date)
        @date = date
    end

    # getter
    def date
        @date
    end

    # setter   
    def set_price(price)
        @price = price
    end

    # getter
    def price
        @price
    end
end

first = Ticket.new
second = Ticket.new
first.set_price(2000)
first.set_date('31.10.2019')
second.set_price(3000)
second.set_date('02.12.2019')
puts "\nfirst ticket:"
puts "\tprice: #{first.date}"
puts "\tdata: #{first.price}"
puts "\nsecond ticket:"
puts "\tprice: #{second.date}"
puts "\tdata: #{second.price}"

class HelloWorld
    @@counter = 0

    def counter
        @@counter
    end

    def set_counter(counter)
        @@counter = counter
    end
end

first = HelloWorld.new
first.set_counter 10
second = HelloWorld.new
puts second.counter # 10
p HelloWorld.class_variables # [:@@counter]

# $stdout = StringIO.new 
# puts 'Hello, world!'
# File.write('output.log', $stdout.string)
# $stdout = STDOUT
# puts 'Hello, Ruby!'

puts __FILE__ # /home/dhonchar/projects/ruby/simple-ruby/variables.rb
puts __LINE__ # 136

