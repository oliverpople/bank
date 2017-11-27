require 'credit.rb'
require 'date'

class Banker
  def initialize; end

  def new_transaction(amount, date = DateTime.new)
    if amount > 0
      create_credit(amount, date)
    elsif amount < 0
      create_debit(amount, date)
    else
      '0 sized transactions are useless'
    end
  end


  private

  def create_credit(amount, date)
    credit = Credit.new(amount, date)
  end

  def create_debit(amount, date)
    debit = Debit.new(amount, date)
  end
end
