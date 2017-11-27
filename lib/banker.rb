require 'credit.rb'

class Banker
  def initialize; end

  def new_transaction(amount)
    if amount > 0
      create_credit(amount)
    elsif amount < 0
      create_debit(amount)
    else
      '0 sized transactions are useless'
    end
  end


  private

  def create_credit(amount)
    credit = Credit.new(amount)
  end

  def create_debit(amount)
    debit = Debit.new(amount)
  end
end
