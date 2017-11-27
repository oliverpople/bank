require './lib/credit.rb'
require 'date'
require './lib/bank_account.rb'

class Banker

attr_reader :bankAccount

  def initialize;
    @bankAccount = BankAccount.new
  end

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
    bankAccount.add_credit_to_array(credit)
    bankAccount.add_credit_to_account_balance(credit)
    credit
  end

  def create_debit(amount, date)
    debit = Debit.new(amount, date)
    bankAccount.add_debit_to_array(debit)
    bankAccount.subtract_debit_from_account_balance(debit)
    debit
  end
end
