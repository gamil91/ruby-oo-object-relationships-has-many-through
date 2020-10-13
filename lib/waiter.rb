require 'pry'

class Waiter

@@all = []

def self.all
    @@all
end

attr_reader :name, :years

def initialize(name, years_of_experience)
    @name = name
    @years = years_of_experience
    self.class.all << self
end

def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
end

def meals
    Meal.all.select {|meal| meal.waiter == self}
    
end

def best_tipper
    self.meals.max_by {|meal| meal.tip}.customer
end




end

