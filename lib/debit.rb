class Debit

  attr_reader :amount, :date

  def initialize(amount, date)
    @amount = amount
    @date = date
  end

  def get_amount
    @amount
  end

end
