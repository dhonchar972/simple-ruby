def my_loop
    puts 'start'
    yield
    yield
    yield
    puts 'end'
end
my_loop { puts 'Hello, world!' }
# start
# Hello, world!
# Hello, world!
# Hello, world!
# end

def my_loop
    yield while true
end
# my_loop { puts 'Hello, world!' } output loop

def my_loop
    n = 0
    yield n += 1
    yield n += 1
    yield n += 1
end
my_loop { |i| puts "#{i}: Hello, world!" }
# 1: Hello, world!
# 2: Hello, world!
# 3: Hello, world!

def greeting
    yield 'Hello', 'Ruby', '!'
end
greeting do |interjection, noun|
    puts "#{interjection}, #{noun}!" # Hello, Ruby!
end
greeting do |fst, snd, thd, fth|
    p fst # "Hello"
    p snd # "Ruby"
    p thd # "!"
    p fth # nil
end

def my_loop
    if block_given? # check parameter passing
        yield while true
    end
end
my_loop # doesn't throw exception
# SIMILAR
def my_loop
    return unless block_given?
    yield while true
end
my_loop # doesn't throw exception

def greeting
    name = block_given? ? yield : 'world'
    "Hello, #{name}!"
end
puts greeting # Hello, world!
puts greeting { 'Ruby' } # Hello, Ruby!
# hello = greeting do
#     print 'Please, enter name: '
#     gets.chomp
# end
# puts hello

p 5.tap { |x| x * x } # 5
p 5.yield_self { |x| x * x } # 25

# hello = 'Hello, %s!'.yield_self do |template|
#     print 'Please, enter name: '
#     format(template, gets.chomp)
# end
# puts hello

def greeting(&block)
    block.call
end
greeting { puts 'Hello, world!' }

def greeting(&block)
    block.call 'Ruby!'
end
puts greeting { |name| "Hello, #{name}!" } # Hello, Ruby!

def greeting(name)
    yield name
end
def outer(name)
    greeting(name) { |name| "Hello, #{name}!" }
end
puts outer('Ruby') # Hello, Ruby!
# SIMILAR
def greeting(name, &block)
    block.call name
end
def outer(name, &block)
    greeting(name, &block)
end
puts outer('Ruby') { |name| "Hello, #{name}!" } # Hello, Ruby!

# Class Proc
block = Proc.new { |x| x.even? }
p [*1..10].select(&block) # [2, 4, 6, 8, 10]
# shorter versions
p [*1..10].select(&:even?.to_proc) # [2, 4, 6, 8, 10]
p [*1..10].select(&:even?) # [2, 4, 6, 8, 10]

pr = proc { |n| n * n }
p pr.call(3) # 9
# SIMILAR
lb = lambda { |n| n * n }
p lb.call(3) # 9
# SIMILAR
slb = ->(x) { x * x }
p slb.call(3) # 9

# can use this
pr = proc { |m, n| m * n }
p (1..5).reduce(&pr) # 120

