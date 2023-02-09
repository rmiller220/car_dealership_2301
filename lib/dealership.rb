class Dealership
attr_reader :inventory
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []

  end
  def inventory_count
    @inventory.count
  end
  def add_car(car)
    @inventory << car
  end
  def has_inventory?
   inventory_count > 0
  end
  #could use method below, but above is preferred  
  # if inventory_count == 0
    #   false
    # else
    #   true
    # end
  def cars_by_make(make)
    @inventory.select do |car|
      car.make == make
      #look at each car in the inventory
      #keep the car instance IF
        #car.make == make (argument)
    end
    
  end

  def total_value
    @inventory.sum do |car|
      car.total_cost
    end
    #look at each car in inventory
    #multiply monthly payment * loan length
    # sum of all together
  end
  
  def details
    # details_hash = {}  << another way to create an new hash
    details_hash = Hash.new
    details_hash["total_value"] = total_value
    details_hash["address"] = @address 
    details_hash
    

  end

end
