# Creating namespace
class CarFactory
    ###### Inner static values, can get through getter, common to all class instances
    @@count = 0
    @@cars = []

    ###### Constructor
    # def initialize(paramters)
    #     @paramters = paramters
    # end

    ###### Classical set method (setter)
    # def count=(count)
    #     @count = count
    # end

    ###### Classical get method (getter)
    def count
        return @@count
    end

    # ###### Classical set method (setter)
    # def cars=(cars)
    #     @cars = cars
    # end

    ###### Classical get method (getter)
    def cars
        return @@cars
    end

    ###### Classical method
    def build
        @@count += 1
        car = Car.new
        car.build
        @@cars << car
        @@cars.last
    end

    ###### Inner class
    class Car
        def title
            'BMW X7'
        end
        def description
            'New BMW X7'
        end
        def engine
            @engine
        end
        def build
            @engine = Engine.new
        end

        class Engine
            # Constant, can be called without instance creating,
            # just print CarFactory::Car::Engine.CYLINDERS
            CYLINDERS = 6
            VOLUME = 3
            POWER = 250

            def cylinders
                CYLINDERS
            end
            def volume
                VOLUME
            end
            def power
                POWER
            end
        end
    end
end