class BankAccount

  attr_reader :balance

  BALANCE = 0

  def initialize
    @balance = BALANCE
  end

  def get_balance
    @balance
  end

end
