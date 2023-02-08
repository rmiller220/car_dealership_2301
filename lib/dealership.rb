class Dealership
attr_reader :inventory
attr_accessor :inventoryq
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []

  end
  def inventory_count
    inventory.count
  end
  def add_car(car)
    @inventory << car
  end
  def has_inventory?
    if inventory.count == 0
      false
    else
      true
    end
  end
  def cars_by_make(make)
    # dealership = Dealership.new("Acme Auto", "123 Main Street")
    dealership.find_all do |car|
      car.include?(make)
    end
    
  end

  def total_value
    car.total_cost*dealership.inventory_count
  end
  
  def details
    
end
