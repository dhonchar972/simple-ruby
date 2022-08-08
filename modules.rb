module Site # use to create namespaces, otherwise use classes
    VERSION = '1.1.0'

    def wrong_declaration(str)
        "Hello, #{str}!"
    end

    def self.right_declaration(str)
        "Hello, #{str}!"
    end

    class Settings

    end
end

require_relative 'modules'

puts Site::VERSION # 1.1.0

obj = Site::Settings.new
p obj.object_id
p Site.wrong_declaration 'boy' # ERROR, we can't call this
p Site.right_declaration 'boy'
