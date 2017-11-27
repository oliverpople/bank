class Debit

  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def get_amount
    @amount
  end

end
