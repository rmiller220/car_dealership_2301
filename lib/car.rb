class Car
  attr_reader :make_model, :payment, :loan_length
  attr_accessor :color
  def initialize(make_model, payment, loan_length)
    @make_model = make_model
    @payment = payment
    @loan_length = loan_length
    @color = nil
  end
  
  def make
    @make_model.split[0]
  end
  
  def model
    @make_model.split[1]
  end

  def monthly_payment
    @payment
  end
  def total_cost
    @payment*@loan_length
  end
  def paint!(color)
    @color = color
  end
end
