require_relative 'ticket'

begin
    10.times.map do |i|
        p Ticket.new date: Time.new(2019, 5, 10, 10, i)
    end
    puts tickets.size
rescue
    puts 'Drop exception!!!'
end

require_relative 'ticket'
begin
    10.times.map do |i|
        p Ticket.new date: Time.new(2019, 5, 10, 10, i)
    end
    puts tickets.size
rescue => e
    p e #<RuntimeError>
    p e.class
    p e.message
    p e.backtrace # ["code/exceptions/ticket.rb:5:in `initialize'", ...]
end

class RandException < Exception # custome exception class
end
begin
    10.times.map do |i|
        p Ticket.new date: Time.new(2019, 5, 10, 10, i)
    end
    
    puts tickets.size
    rescue RandException => e
        puts "Error RandException: #{e.message}"
end

begin
    if rand(2).zero?
        raise RuntimeError, 'Error RuntimeError'
    else
        raise IOError, 'Error IOError'
    end
rescue RuntimeError => e
    puts e.message
rescue IOError => e
    puts e.message
end

def say
    begin
        raise 'Error' if rand(2).zero?
        puts 'No errors'
    ensure
        return 'Return value'
    end
end
puts say