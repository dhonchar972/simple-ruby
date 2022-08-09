# require_relative 'class-methods'

class Ticket
    # @price = 0 # can call but it return nil

    def initialize()
        @price = 0
    end

    # def initialize_copy()
    #     'constructor for object cloning (dup and clone)'
    # end

    def set_price(price) # setter
        @price = price
    end

    def price # getter
        @price
    end
end

first = Ticket.new
second = Ticket.new
puts "Default price in first: #{first.price}"
puts "Default price in second: #{second.price}"
first.set_price(500)
second.set_price(600)
puts "First price: #{first.price}"
puts "Second price: #{second.price}"

class Palette
    def initialize(colors = [])
        @colors = colors
    end
    def each
        @colors.each { |c| yield c }
    end
end
colors = %w[r o y g b v q]
# pal = Palette.allocate # - ignore constructor 
pal = Palette.new(colors)
pal.each { |color| puts color }

class Palette
    def initialize(colors = [])
        @colors = colors
        @colors = yield if block_given?
    end
    def each
        @colors.each { |c| yield c }
    end
end
pal = Palette.new do
    %w[r o y g b v q]
end
pal.each { |color| puts color }

class Ticket
    # constructor
    def initialize(date:, price: 500)
        @pirce = price
        @date = date
    end

    # setter
    def price=(price)
        @pirce = price
    end

    # getter
    def price
        @pirce
    end

    # setter
    def date=(date)
        @date = date
    end

    # getter
    def date
        @date
    end
end

ticket = Ticket.new(
    date: Time.new(2019, 5, 10, 10, 20),
    price: 500
)
ticket.price = 600
ticket.date = Time.new(2019, 5, 11, 10, 20)
puts "Price: #{ticket.price}"
puts "Date: #{ticket.date}"

class Ticket
    attr_reader :date, :price # Accessor, attr_reader - create default getters
    attr_writer :date, :price # Accessor, attr_writer - create default setters

    def initialize(date:, price: 500)
        @pirce = price
        @date = date
    end
end

class Ticket
    attr_accessor :date, :price # Accessor, attr_accessor - create default getters and setters

    def initialize(date:, price: 500)
        @pirce = price
        @date = date
    end
end

# singelton methods
# def instance_name.win
#     'Win!'
# end
# class << instance_name
#     def win
#         'Win!'
#     end
# end

class HelloWorld
    @@static_value = 0

    def self.static_value
        @@static_value
    end

    def self.static_value=(value)
        @@static_value = value
    end

    def self.greeting
        'class method!' # classic static method
    end

    def hello
        'instance method' # classic class method
    end
end

puts HelloWorld.greeting # call without instance creation
puts HelloWorld.static_value
HelloWorld.static_value = 12
puts HelloWorld.static_value
