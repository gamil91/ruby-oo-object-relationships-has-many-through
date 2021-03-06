class Customer
  
@@all = []

def self.all
    @@all
end

attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
        self.class.all << self
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select {|meal| meal.customer == self}
    end

    def waiters
        self.meals.collect {|meal| meal.waiter }
    end

end