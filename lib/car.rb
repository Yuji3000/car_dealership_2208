class Car
  attr_reader :name, :monthly_payment, :loan_length
 def initialize(name, monthly_payment, loan_length)
  @name = name
  @monthly_payment = monthly_payment
  @loan_length = loan_length
 end

 def make
   @name.split.first 
 end

 def model
  @name.split[1]
 end

 def total_cost
  @monthly_payment * @loan_length 
 end

 def color

 end

 def paint!(car_color)
  color << car_color

 end
end