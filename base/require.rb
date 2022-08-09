require './test'
require 'date'
require 'erb'
# load './test.rb'
# Bundler.require(:default)

test = Test.new
test.greeting
# hello!, we call only class Test, 
# but ruby read all functions calls before and after this class, classes needs isolation

puts CONST # 1
# puts hello # undefined local variable or method `hello'
aboba

p Time.now
p Time.now.to_a # time to array
p Date.new

template = 'Time now <%= Time.now %>'
puts ERB.new(template).result