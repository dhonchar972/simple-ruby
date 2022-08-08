class Page
    attr_accessor :title, :body, :keywords
    def initialize
        title = 'some'
        body = 'fdfd'
        keywords = 'dgdgd'
    end
    public
    # methods
    private
    # methods
    # can't call self
    protected
    # methods
    # can call self and internal class objects, only within this class
end

# require_relative 'inheritance'

class News < Page # class extending
    attr_accessor :date
    def initialize
        date = Time.now
        super
    end
end

p News.method_defined? :title
p News.method_defined? :body
p News.method_defined? :keywords
p News.method_defined? :date
p News <= Page
p News.superclass

# Object.send(:remove_const, :CONST) ignore scope, we can delete private method or const

class Ticket
    attr_accessor :price, :date
    @@next_number = 1

    def initialize(date:, price: 500)
        @date = date
        @price = price
        @number = @@next_number
        @@next_number += 1
    end

    def <=>(ticket) # override object comparison
        number <=> ticket.number
    end

    def price
        price_format(@price)
    end

    private

    def price_format(price)
        format('%.f', price)
    end

    protected

    def number
        @number
    end
end

first = Ticket.new(date: Time.mktime(2019, 5, 10, 10, 20))
second = Ticket.new(date: Time.mktime(2019, 5, 10, 10, 20))
puts first <=> second # -1
p first.public_methods(false) # [:price, :<=>, :price=, :date=, :date]
p first.protected_methods(false) # [:number]
p first.private_methods(false) # [:price_format, :initialize]
p Ticket.public_instance_methods(false) # [:price, :<=>, :price=, :date=, :date]
p Ticket.protected_instance_methods(false) # [:number]
p Ticket.private_instance_methods(false) # [:price_format, :initialize]

p Ticket.private_method_defined? :number # false
p Ticket.public_method_defined? :number # false
p Ticket.protected_method_defined? :number # true