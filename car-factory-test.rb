require_relative 'car-factory'

puts "CYLINDERS: #{CarFactory::Car::Engine::CYLINDERS}" # constant call

factory = CarFactory.new
car = factory.build
puts car.title # BMW X7
puts car.description # New BMW X7
puts car.engine.cylinders # 6
puts car.engine.volume # 3
puts car.engine.power # 250
puts "Count: #{factory.count}" # static value call through getter
puts "Cars: #{factory::cars}" # static value call through getter

just_car = CarFactory::Car.new # inner class instance, we use namespace
just_car.build
puts just_car.title # BMW X7
puts just_car.description # New BMW X7
puts just_car.engine.cylinders # 6
puts just_car.engine.volume # 3
puts just_car.engine.power # 250

just_engine = CarFactory::Car::Engine.new # inner class in inner instance, we use namespace
p just_engine.cylinders # 6
p just_engine.power # 250
p just_engine.volume # 3
p just_engine.class # Car::Engine

