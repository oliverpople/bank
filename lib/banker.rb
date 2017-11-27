require 'credit.rb'

class Banker

  def initialize
  end

    def new_transaction(amount)
      if amount > 0
        new_credit(amount)
      elsif amount < 0
        new_debit(amount)
      end
    end

    def new_credit(amount)
      credit = Credit.new(amount)
      credit.get_amount
    end

    def new_debit(amount)
      debit = Debit.new(amount)
      debit.get_amount
    end

end
