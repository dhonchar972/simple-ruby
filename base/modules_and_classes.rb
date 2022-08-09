module Seo
    public

    attr_accessor :meta_title, :meta_description, :meta_keywords
    
    # singletons
    def self.say(name)
        "Hello, #{name}!"
    end
    # SIMILAR TO
    class << self # multiple add
        def say(name)
            "Hello, #{name}!"
        end

        def run
            "Running!"
        end
    end
end
#######################################
# require_relative 'seo_module'

class Page
    attr_accessor :title, :body
    private

end

class News < Page # class extending
    include Seo # add module to class (something like interface implementation)
    attr_accessor :date
end

class About < Page # class extending
    include Seo # add module to class (something like interface implementation)
    attr_accessor :phones, :address
end

class PhotoCatalog < Page # class extending
    attr_accessor :photos
end

# use include, extend, prepend
# class Page
#     include Seo
#     extend Seo::InnerSeoModule
#     prepend Greetable
# end

module Hello
    extend self # embedding all singletons

    def say(name) # we can call this singleton
        "Hello, #{name}!"
    end
    # or # module_function :say
end
puts Hello.say 'Ruby' # Hello, Ruby!

# hooks (callback methods, like initialize):
    # extended - called when a module is suspended in a class with extend
    # included - called when a module is suspended in a class with include
    # prepended - called when a module is suspended in a class with prepend
    # method_added - called when an instance method is added to a module
    # method_removed - called when an instance method is removed from a module by remove_method and other
    # singleton_method_added - called when singleton method is added to module
    # singleton_method_removed - called when singleton method is removed from module
