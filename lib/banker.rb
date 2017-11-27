require 'credit.rb'

class Banker
  def initialize; end

  def new_transaction(amount)
    if amount > 0
      new_credit(amount)
    elsif amount < 0
      new_debit(amount)
    else
      '0 sized transactions are useless'
    end
  end
  

  private

  def new_credit(amount)
    credit = Credit.new(amount)
  end

  def new_debit(amount)
    debit = Debit.new(amount)
  end
end
