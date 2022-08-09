require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
##
# Greeting class
class Hello
    ##
    # Prints hello string to standard output,
    # interpolating the +row_count+ parameter into it
    #
    # = Usage example
    #
    # h = Hello.new
    # h.geeting('Ruby')
    def greeting(name)
        puts "Hello, #{name}"
    end
end