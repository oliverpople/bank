class BankAccount

  attr_reader :balance, :credits, :credit_array, :debit_array

  BALANCE = 0

  def initialize
    balance = BALANCE
    @balance = balance
    @credit_array =[]
    @debit_array =[]
  end

  def get_balance
    @balance
  end

  def add_credit_to_array(credit)
    @credit_array.push(credit)
  end

  def get_credit_array
    @credit_array
  end

  def add_credit_to_account_balance(credit)
    p @balance += credit.get_amount
  end

  def add_debit_to_array(debit)
    @debit_array.push(debit)
  end

  def get_debit_array
    @debit_array
  end

  def subtract_debit_from_account_balance(debit)
    @balance += debit.get_amount
  end

  def get_balance_sheet
   @credit_array.each { |x| p x.to_s }
  end

end
