require 'banker.rb'
require 'credit.rb'
require 'debit.rb'

describe Banker do
  describe '#new_transaction' do
    it 'takes an amount greater than 0 and creates a credit object equal to that amount' do
      credit = subject.new_transaction(99, '10-01-2012')
      expect(credit.get_amount).to eq(99)
    end

    it 'takes an amount less than 0 and creates a debit object equal to that amount' do
      debit = subject.new_transaction(-10, '10-01-2012')
      expect(debit.get_amount).to eq(-10)
    end

    it 'raises and error if transaction is equal to 0' do
      expect(subject.new_transaction(0, '10-01-2012')).to eq('0 sized transactions are useless')
    end

    it 'takes a date and returns credit object with that date' do
        credit = subject.new_transaction(99, '10-01-2012')
        expect(credit.get_date).to eq('10-01-2012')
    end

    it 'takes a date and returns credit object with that date' do
        debit = subject.new_transaction(-10, '10-01-2012')
        expect(debit.get_date).to eq('10-01-2012')
    end

  end
end
