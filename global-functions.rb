def convert(value=10)
    value * 1000
end
puts convert(11) # 11000

def multi_params(*params)
    for param in params
        puts param
    end
end

multi_params(12, 7, 22, 4, 5)
def multi(*params)
    p params
end
multi(12, 7, 22, 4, 5) # [12, 7, 22, 4, 5]

def convert2(value:, factor: 1000)
    value * factor
end
puts convert2(value: 11) # 11000
puts convert2(value: 11, factor: 1024) # 11264

def greeting(params)
    p params
end
greeting({first: 'world', second: 'Ruby'})
greeting(first: 'world', second: 'Ruby')
greeting first: 'world', second: 'Ruby'

def greeting(params)
    puts params.delete :first # world
    puts params.delete :second # Ruby
    p params # {:third=>"hello"}
end
greeting first: 'world', second: 'Ruby', third: 'hello'

def convert(value, factor = nil)
    return value * 1000 unless factor
    value * factor
end
puts convert(11) # 11000
puts convert(11, 1024) # 11264

# self - this
object = Object.new
another = Object.new
def object.convert(value:, factor: 1000)
    value * factor
end
puts object.convert(value: 11) # 11000
# puts another.convert(value: 5) # undefined method `convert'
puts another.convert(value: 5) if another.respond_to? :convert # just ignored

def convert(value:, factor: 1000)
    value * factor
end
alias kg_to_gramms convert
alias kb_to_bytes convert
puts kg_to_gramms(value: 5) # 5000
puts kb_to_bytes(value: 11, factor: 1024) # 11264

# undef convert # remove function

# val = gets
# val = readline
# val = gets.chomp # remove carriage return

# print 'Введите, пожалуйста, имя файла '
# filename = gets.chomp
# $stdin = File.open(filename)
# puts gets('$$')

# at_exit { puts 'Something went wrong!' }
# abort # stop program run
# exit
# exit!
# sleep 5

# belongs_to? even? odd? finit? infinit? nan? nil? zero? positive? negative?

hello = 'Hello, world!'
puts hello.upcase # HELLO, WORLD! return new string
puts hello.upcase! # HELLO, WORLD! changes current string!!!
# functions with ! on end call "BANG METHODS", they change object state!!!

