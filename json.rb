require 'json'
# require 'yaml'

params = JSON.parse('{"hello": "world", "language": "Ruby"}') # YAML.load(yaml_str)
# params = JSON.parse File.read('person.json') # YAML.load_file('person.yml')
puts params['hello'] # world
puts params['language'] # Ruby

require 'json'
person = {
    first_name: 'Van',
    last_name: 'Billy',
    patronymic: 'Steve',
    params: {
        score: 20,
        number: 762
    }
}
puts person.to_json  # YAML.dump(person)