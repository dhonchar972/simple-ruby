p Regexp.new('') # //
p // # //
p %r() # //

p Regexp.new('\\\\') # /\\/
p /\\/ # /\\/
p %r(\\) # /\\/

p 'Hello, Ruby! Ruby is cool!' =~ /Ruby/ # 7
p 'Ruby language' =~ /Ruby/ # 0
p 'Language Ruby' =~ /Ruby/ # 9
p 'Language ruby' =~ /Ruby/ # nil
p /Ruby/ =~ 'Ruby language' # 0
p 'Hello world' =~ /Ruby/ # nil

str = 'Hello, world!'
p str[/world/] # world
p str[/\w+!/] # world!

str = 'Hello, Ruby! Ruby is cool!'
m = str.match /Ruby/
p m # #<MatchData "Ruby">
p m.to_a # ["Ruby"]

str = 'Hello, Ruby1 Ruby is cool!'
p str.match(/\d+/) #<MatchData "1">
p str.match? /Ruby/ # true
p str.match? /world/ # false

m = 'Hello, Ruby! Ruby is cool!'.scan /Ruby/
p m # ["Ruby", "Ruby"]
p m.size # 2
