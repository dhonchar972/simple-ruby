var = 2
var += 10 # kek, look at this, python
p var
# var++ and var-- missed, :(

fst, snd, thd = 'Hello', ' world', "!\n"
print fst # Hello
print snd # world
print thd # !

# str = readline # gets
# p str

f = 'first'
s = 'second'
f, s = s, f # python, hello again
p f # second
p s # first

fst, snd, thd = ['Hello', 'world', '!']
puts fst # Hello
puts snd # world
puts thd # !

arr = 'Hello', 'world', '!'
p arr # ["Hello", "world", "!"]

fst, (f, s), thd = 'Hello', ['world', 'Ruby'], '!'
p fst # "Hello"
p f # "world"
p s # "Ruby"
p thd # "!"

fst, snd, thd = 'Hello', ['world', '!']
p fst # "Hello"
p snd # ["world", "!"]
p thd # nil

fst, snd, thd = 'Hello', *['world', '!'] # * unpacking
p fst # "Hello"
p snd # "world"
p thd # "!"

fst, *snd = ['Hello', 'world', '!'] # puking

fst, snd, thd, *fth = ['Hello', 'world', '!']
p fst # "Hello"
p snd # "world"
p thd # "!"
p fth # []

fst, *snd = *['Hello', 'world', '!']
p fst # "Hello"
p snd # ["world", "!"]

p [1, 2, 3, 4, 5]
p *[1, 2, 3, 4, 5] # will print one character at a time
p [*1..10] # arrays creation and filling
p [*'a'..'z'] # arrays creation and filling
p 'r' * 10 # ehehe

str = 'Hello,'
str << ' world!'
puts str # Hello, world!

price = 300
puts "#{price} hundred bucks"
print price.to_s, " hundred bucks\n"
puts '%d hundred %s' % [300, 'bucks']

p '% 12d' % 45 # "          45" filling size
p '%8.2f' % 1000.45684 # " 1000.46"
p '%.2f' % 12.92869 # "12.93"
puts 1000.45684.round # 1000
puts 1000.45684.round(2) # 1000.46

puts "Price %d" % 500 # Price 500
puts sprintf("Price %d", 500) # Price 500
puts format("Price %d", 500) # Price 500 best practise
puts format('%1$d + %1$d = %2$d', 7, 4 + 2) # 7 + 7 = 6
puts format('%<summand>d + %<summand>d = %<result>d', summand: 2, result: 2 + 2)

p 3 > 10 # false
p 3 < 10 # true
p 3 <=> 10 # left operand is less than right, -1
p 3 <=> 3 # left operand is not less than right, 0
p 10 <=> 3 # left operand is bigger than right 1
# === overridden within classes
p (1..10) == 5 # false
p (1..10) === 5 # true, because it's (1..10).===(5), comparison method in class Range overridden
p 5 === (1..10) # false, because it's 5.===(1..10), comparison method in class Integer not overridden

p 1.negative? # false
p 0.negative? # false
p -1.negative? # true
p 1.zero? # false
p 0.zero? # true
p -1.zero? # false
p 1.positive? # true
p 0.positive? # false
p -1.positive? # false

fst = 4 / 3.0 - 1
snd = 1 / 3.0
p fst == snd # false
p (fst - snd).abs < Float::EPSILON # true, abs - math module from numer, Float::EPSILON - calculation infelicity
p Math.sqrt(4)
p defined? fst
# local_variable_defined?
# instance_variable_defined?
# class_variable_defined?
# const_defined?
