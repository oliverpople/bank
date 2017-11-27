require 'credit.rb'

class Banker

  def initialize
  end

    def new_transaction(amount)
      if amount > 0
        credit = Credit.new(amount)
        credit.get_amount
      end
    end

end
