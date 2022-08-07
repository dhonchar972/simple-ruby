t = 4
if t > 0
    puts 'yes'
elsif t < 0
    puts 'no'
else 
    puts 'mmmmm'
end

if t == 0 then puts 'zero' elsif t > 0 then puts 'bigger' else puts'less' end
puts 4 if t == 4 # better way

puts (if t == 4
        'right'
    else
        'false'
    end)

var = if t == 4
        t
    else
        nil
    end
puts var

# &&, and, ||, or, !

unless t == 4
    puts 'no'
end
# identical to
if t != 4
    puts 'no'
end

var = rand(0..1) == 0 ? 100 : 200 # RANDOM GENERATOR
puts var

case var
when 100
    puts 'Zero';
when 200
    puts 'One'
else
    puts 'Two'
end

number = 1..100
type = case number
when Integer then 'int'
when String then 'str'
when Range then 'rng'
else 'else'
end

flag1 = true
flag2 = true
if flag1
    if flag2
        puts 'both right'
    else
        puts 'two - wrong'
    end
else
    puts 'one - wrong'
end

if flag1 && flag2
    puts 'both right'
else
    puts 'one or both false'
end

