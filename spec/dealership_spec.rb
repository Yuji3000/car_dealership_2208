require './lib/car'
require './lib/dealership'


describe initialize do
  it "there is a new instance of dealership" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership).to be_a(Dealership)
  end

  it 'counts dealership inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    dealership.inventory
    expect(dealership.inventory). to eq([])
    dealership.inventory_count
    expect(dealership.inventory_count).to eq(0)
  end

    it 'counts inventory' do
      car_1 = Car.new("Ford Mustang", 1500, 36)
      car_2 = Car.new("Toyota Prius", 1000, 48)
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      dealership.add_car(car_1)
      expect(dealership.inventory).to eq([car_1])
      dealership.add_car(car_2)
      dealership.inventory
      expect(dealership.inventory).to eq([car_1, car_2])
      dealership.inventory_count
      expect(dealership.inventory_count).to eq(2)
    end
end