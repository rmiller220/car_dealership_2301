require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do

  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership).to be_a(Dealership)
    
  end
  
  it 'has an empty inventory by default' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory).to eq([])
  
  end


  it 'adds a car to inventory and counts it' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    
    expect(dealership.inventory_count).to eq(0)
    
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    
    expect(dealership.inventory).to eq([car_1, car_2])
    expect(dealership.inventory_count).to eq(2)
  end
  
  it 'checks for inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    
    expect(dealership.has_inventory?).to eq(false)
    
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    
    expect(dealership.has_inventory?).to eq(true)
  end
  
  it 'sorts cars by make' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.cars_by_make("Toyota")).to eq([car_2, car_3])
    expect(dealership.cars_by_make("Ford")).to eq([car_1])
  
  end

it 'finds total value of cars in inventory' do
  dealership = Dealership.new("Acme Auto", "123 Main Street")
  car_1 = Car.new("Ford Mustang", 1500, 36)
  car_2 = Car.new("Toyota Prius", 1000, 48)
  car_3 = Car.new("Toyota Tercel", 500, 48)
  car_4 = Car.new("Chevrolet Bronco", 1250, 24)
  dealership.add_car(car_1)
  dealership.add_car(car_2)
  dealership.add_car(car_3)
  dealership.add_car(car_4)
  expect(dealership.total_value).to eq(156000)
  end

  it 'returns total details hash' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    
    expect(dealership.details).to eq({
      "total_value" => 156000,
      "address" => "123 Main Street"
    })
  end

    
end


