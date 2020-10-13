class Meal

@@all = []

def self.all
    @@all
end

attr_accessor :waiter, :customer, :total, :tip

def initialize(waiter, customer, total, tip)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    self.class.all << self
end


end