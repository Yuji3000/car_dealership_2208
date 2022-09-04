class Dealership
  attr_reader :name, :address, :inventory
  def initialize(name, address) 
    @name = name
    @address = address
    @inventory = []
    @has_inventory = false
  end

  def inventory_count
    @inventory.length
  end
  
  def add_car(car)
    @inventory << car
    @has_inventory = true
  end

  def has_inventory?
    @has_inventory
  end

    def cars_by_make(make)
      @inventory.map do |make|
        @car.make 
      end

    end
  
end