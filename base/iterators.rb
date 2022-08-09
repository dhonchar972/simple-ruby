while false
    puts 'Hello, world!'
end

n = 0; while n < 3 do puts n; n += 1 end

i = 0
max = 6
puts 'Hello, world!' while (i += 1) <= max

i = 0
max = 6
begin
    puts 'Hello!'
    i += 1
end while i < max

@max_iterates = 5
@i = 0
while @i < @max_iterates
    puts @i
    @i += 1
end

def condition?
    @x ||= 0
    @max_iter ||= begin
        5
    end

    @x += 1
    @x <= @max_iter
end
puts @x while condition?
# a ||= b 
# if a is undefined or falsey, then evaluate b and set a to the result.
# otherwise b is not evaluated, and no assignment takes place
# similar to 'a || a = b'

# @ - global variable
def con
    @h ||= 5
    max_i ||= begin
        10
    end
    @h += 1
    @h <= max_i
end
puts @h while con


k = 2
max_k = 7
size = 3
while k <= max_k
    j = 1
    while j <= max_k
        print format("%#{size}d ", k * j)
        j += 1
    end
    k += 1
    puts
    next if k.even?
    break if k >= 20
end

ma = 5
t = 0
while t < ma do
puts t
redo if rand(0..1).zero? # if zero rolls, repeat the round
t += 1
end

# until SIMILAR WHILE, JUST TAKES FALSE INSTEAD OF TRUE

for x in [1, 2, 3, 4]
    puts x
end

for x in 1..4
    puts x
end

###################################################################################################

# Iterators: loop, each, times, upto, downto, tap
# loop { puts 'Hello, loop!' }

# loop do
#     puts 'Hello, loop!'
# end

rainbow = %w[red orange yellow green gray indigo violet]
for color in rainbow
    puts color
end
p '////////////////////similar//////////////////////////'
rainbow = %w[red orange yellow green gray indigo violet]
rainbow.each { |color| puts color }

rainbow = {
    red: 'red',
    orange: 'orange',
    yellow: 'yellow',
    green: 'green',
    blue: 'blue',
    indigo: 'indigo',
    violet: 'violet'
}
rainbow.each { |key, name| puts "#{key}: #{name}" }

rainbow = [
    'orange',
    'yellow',
    'green',
    'blue',
    'indigo',
    'violet'
]
rainbow.each {|name| puts "#{name}" }

rainbow = %w[
    'orange'
    'yellow'
    'green'
    'blue'
    'indigo'
    'violet'
]
rainbow.each {|name| puts "#{name}" }

rainbow = [
    :orange,
    :yellow,
    :green,
    :blue,
    :indigo,
    :violet
]
rainbow.each {|name| puts "#{name}" }

rainbow = %i[
    orange
    yellow
    green
    blue
    indigo
    violet
]
rainbow.each {|name| puts "#{name}" }

5.times { |i| puts i }
5.upto(10) { |i| puts i }
10.downto(5) { |i| puts i }

arr = [1, 2, 3, 4, 5]
arr.each { |x| puts x + 1 }

rainbow = %w[red orange yellow green gray indigo violet]
rainbow.each_with_index { |color, i| puts "#{i}: #{color}" }

result = [1, 2, 3, 4, 5].map { |x| x + 1 } # synonym - collect
p result # [2, 3, 4, 5, 6]

arr = []
[1, 2, 3, 4, 5].each { |x| arr << x * x }
p arr # [1, 4, 9, 16, 25]
# SIMILAR
arr = [1, 2, 3, 4, 5].map { |x| x * x }
p arr # [1, 4, 9, 16, 25]

p [1, 2, 3, 4, 5].select { |x| x.even? } # [2, 4]
p [1, 2, 3, 4, 5].reject { |x| x.even? } # [1, 3, 5]
p [1, 2, 3, 4, 5].reduce { |m, x| m * x } # 120, start state of m = 1, x = 1
p [1, 2, 3, 4, 5].reduce(10) { |m, x| m * x } # 1200, start state of m = 10, x = 1

arr = [1, 2, 3, 4, 5].reduce([]) do |m, x|
    m << x * x if x.even?
    m
end
p arr # [4, 16]
# SIMILAR
arr = [1, 2, 3, 4, 5].each_with_object([]) do |x, m|
    m << x * x if x.even?
end
p arr # [4, 16]

result = (1..7).select { |x| x.even? }
    .reduce do |m, x|
        puts "debug: #{x}"
        m + x
end # debug: 4 debug: 6
p result # 12
# SIMILAR
result = (1..7).select { |x| x.even? }
    .tap { |x| puts "debug: #{x}" }
    .reduce { |m, x| m + x } # debug: [2, 4, 6]
p result # 12

def hash_return(params)
    params[:page] = 1
    params
end
p hash_return(per_page: 10) # {:per_page=>10, :page=>1}
def hash_return(params)
    params[:page] = 1
end
p hash_return(per_page: 10) # 1
def hash_return(params)
    params.tap { |p| p[:page] = 1 }
end
p hash_return(per_page: 10) # {:per_page=>10, :page=>1}

# short version
p [1, 2, 3, 4, 5].select { |x| x.even? } # [2, 4]
p [1, 2, 3, 4, 5].select(&:even?) # [2, 4]

[*1..10].each do |i|
    break if i > 5
    puts i
end
[*1..10].each do |i|
    next if i.even?
    puts i
end
[1, 2, 3, 4, 5].each do |x|
    puts x
    redo if (j ||= 0) && (j += 1) && j <= 3
end

# ENUMERATOR
e = [*1..3].each
p e.class # Enumerator
p e.size # 3
p e.next # 1
p e.next # 2
p e.next # 3
p e.next # iteration reached an end (StopIteration)

#each_with_index

#map.with_index
rainbow = %w[red orange yellow green gray indigo violet]
arr = rainbow.map.with_index { |color, i| "#{i}: #{color}" }
p arr
# ["0: red", "1: orange", "2: yellow", "3: green", "4: gray", "5: indigo", "6: violet"]

#map.with_object
arr = [1, 2, 3, 4, 5].map.with_object([]) do |x, m|
    m << x * x if x.even?
end
p arr # [4, 16]